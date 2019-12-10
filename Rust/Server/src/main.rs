extern crate rayon;
use rayon::prelude::*;
use std::net::{TcpListener,Incoming,TcpStream};
use std::io::prelude::*;
use std::path::PathBuf;
use std::ffi::OsStr;
use std::io::{Read,Write,BufReader,BufWriter};
use std::env;
use std::thread;
use std::io;
use std::sync::Mutex;
use std::fs;
use std::fs::File;
use std::path::Path;

enum ReqType{
    Get(),
    Put(),
}
struct FileReq{
    req: ReqType,
    files: Vec<String>,
}
impl FileReq{
    fn new(req: ReqType, files: Vec<String>) -> FileReq{
        FileReq{
            req,
            files,
        }
    }
}

fn handle_connection(mut stream: TcpStream) -> io::Result<()>{
    let mut buf: [u8; 512] = [0;512];   
    let bytes_read = stream.read(&mut buf)?;
    println!("{} bytes Read.", bytes_read);
    let mut args: Vec<String> = Vec::new(); 
    if bytes_read != 0 {
        process_data(&buf, &mut args, bytes_read);
        for arg in &args{
            println!("{}:{}", arg, arg.len());
        }
        match handle_args(&args){
            Ok(req) => match req.req{
                ReqType::Get() => {
                    let files:Vec<String> = get_file(req)?;
                    if files.is_empty() {
                        stream.write("File not Found.".as_bytes())?;
                    }else{
                        'fileLoop: for file in files{
                            println!("File to open: {}", file);
                            let mut f: File;
                            match File::open(file){
                                Ok(o) => f = o,
                                Err(e) => {
                                    println!("Failed to Open File. {}",e);
                                    continue 'fileLoop; 
                                }
                            };
                            println!("We made it this far!");
                            let mut buf: Vec<u8> = Vec::new();
                            f.read_to_end(&mut buf)?;
                            let mut writer = BufWriter::new(&stream);
                            writer.write_all(&mut buf)?;
                        }
                    }
                },
                ReqType::Put() => {
                    put_file(req)?
                }
            },
            Err(s) => respond(s, &mut stream)?
        };
    }
    Ok(())
}

fn respond(res: &str, stream: &mut TcpStream) -> io::Result<()>{
    match stream.write(res.as_bytes()){
        Ok(n) => return Ok(()),
        Err(e) => return Err(e),
    };
}

fn process_data(buf: &[u8;512], args: &mut Vec<String>, size: usize) {
    let mut arg = String::new();
    if buf.len() > 0{
        for i in 0..size{
            let temp = buf[i] as char;
            if temp != ' '{
                arg.push(temp);
            }else{
                args.push(arg);
                arg = String::new();
            }
        }
    }else{
        return;
    }
    args.push(arg);
    for a in args{
        println!("{}:{}",a,a.len())
    }
}

fn handle_args(args: &Vec<String>) -> Result<FileReq, &str>{
    let rType: ReqType;
    match args[0].as_str(){
        "Get" | "get"=> {rType = ReqType::Get()},
        "Put" | "put" => {rType = ReqType::Put()},
        _ => {return Err("No Request Made!")},
    };
    let mut files: Vec<String> = Vec::new();
    for i in 1..args.len(){
        files.push(args[i].to_string());
    }
    Ok(FileReq::new(rType, files))
}

fn get_file(req: FileReq) -> io::Result<Vec<String>>{
    let  files = Mutex::new(Vec::<String>::new());
    req.files.par_iter().for_each(|file| {
        let mut dir = env::current_dir().unwrap();
        dir.push("Files");
        let path = dir.to_str().unwrap().to_string();
        find_file(path, &files, file).expect("");
    });
    let ret: Vec<String> = files.into_inner().unwrap();
    Ok(ret)
}
fn put_file(req: FileReq) -> io::Result<()>{
    Ok(())
}
fn find_file(dir_str: String, files: &Mutex<Vec<String>>, name: &String) -> io::Result<()>{
    let dir = Path::new(dir_str.as_str());
    let mut subs = Vec::<String>::new();
    if dir.is_dir(){
        for p in fs::read_dir(dir)?{
            let entry = p?.path();
            if entry.is_dir(){
                subs.push(entry.to_str().unwrap().to_string());
            }else{
                let new_str  = match entry.to_str(){
                    Some(s) => String::from(s),
                    None => String::from(" ")
                }; 
                for c in name.as_bytes(){
                    println!("{}",c);
                }
                let a = OsStr::new(name);
                let b = entry.as_path().file_name().unwrap();
                if a == b{
                    println!("File Found: {}",new_str);
                    let mut guard = files.lock().unwrap();
                    guard.push(new_str);
                    return Ok(());
                }        
            }
        }
        subs.par_iter().for_each( move |dir|{
           match find_file(String::from(dir), files, name){
               Ok(()) => (),
               Err(e) => println!("{:}", e)
           };
        });
    }   
    Ok(())
}

fn main() {
    
    let args = env::args().collect::<Vec<String>>();
    let mut addr = String::from(args[1].as_str());
    addr.push_str(":");
    addr.push_str(args[2].as_str());
    let listener = TcpListener::bind(addr).unwrap();

    for stream in listener.incoming(){
        match stream{
            Ok(s) => {
                thread::spawn(move || {
                    match handle_connection(s){
                        Ok(a) => (a),
                        Err(e) => eprintln!("{}",e) 
                    };
                });
            },
            Err(e) =>  eprintln!("{:}", e)
        };
   }
}
