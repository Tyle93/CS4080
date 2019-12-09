extern crate rayon;
use rayon::prelude::*;
use std::net::{TcpListener,Incoming,TcpStream};
use std::io::prelude::*;
use std::path::PathBuf;
use std::io::{Read,Write};
use std::env;
use std::thread;
use std::io;
use std::sync::Mutex;
use std::fs;
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

struct FileSystem{
    root: String,
}

impl FileSystem{
    fn new(root: String) -> FileSystem{
        FileSystem{
            root,
        }
    }
}

fn handle_connection(mut stream: TcpStream) -> io::Result<()>{
    let mut buf: [u8; 512] = [0;512];   
    let bytes_read = stream.read(&mut buf)?;
    stream.write(&buf[0..bytes_read])?;
    let mut args: Vec<String> = Vec::new(); 
    if bytes_read != 0 {
        process_data(&buf, &mut args);
        for arg in &args{
            println!("{}", arg);
        }
        match handle_args(&args){
            Ok(req) => match req.req{
                ReqType::Get() => {
                    get_file(req)?;
                    //stream.write("Have some shit nigga".as_bytes()).err().unwrap();
                },
                ReqType::Put() => {
                    put_file(req)?
                }
            },
            Err(s) => return Err(stream.write(s.as_bytes()).err().unwrap())
        };
    }
    Ok(())
}

fn process_data(buf: &[u8;512], args: &mut Vec<String>) {
    let mut arg = String::new();
    if buf.len() > 0{
        for i in 0..buf.len(){
            let temp = buf[i] as char;
            if temp != ' '{
                arg.push(temp);
            }else{
                args.push(arg);
                arg = String::new();
            }
        }
    }else{
        eprintln!("Buff is fucked");
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
        files.push(String::from(args[i].as_str()));
    }
    Ok(FileReq::new(rType, files))
}

fn get_file(req: FileReq) -> io::Result<()>{
    let files = Mutex::new(Vec::<String>::new());
    req.files.par_iter().for_each(move |file| {
        let dir = env::current_dir().unwrap().to_str().unwrap().to_string();
        find_file(dir, &files, file).expect("");
    });
    
    Ok(())
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
                if new_str.eq(name){
                    let mut guard = files.lock().unwrap();
                    guard.push(new_str)
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
                    handle_connection(s)
                });
            },
            Err(e) =>  eprintln!("{:}", e)
        };
   }
}
