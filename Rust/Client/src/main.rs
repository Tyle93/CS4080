
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
use std::fs::OpenOptions;
use std::fs::File;
use std::path::Path;


enum RequestType{
    Get(),
    Put(),
    None
}

struct Request{
    rType: RequestType,
    port: String,
    addr: String,
    fileName: String
}

impl Request{
    fn new() -> Self{
        Self{
            rType: RequestType::None,
            addr: String::new(),
            port: String::new(),
            fileName: String::new(),
        }
    }
    fn from(rType: RequestType,port:String, addr: String, fileName: String) -> Self{
        Self{
            rType,
            addr,
            port,
            fileName,
        }
    }
}

fn main() {
    let args = env::args().skip(1).collect::<Vec<String>>();
    let saveDir = PathBuf::from(args[0].as_str());
    let read = std::io::stdin();

    'inputLoop: loop{
        let mut req = Request::new();
        req.addr = match args.get(1){
            Some(s) => String::from(s),
            None => String::from("127.0.0.1")
        };
        req.port = match args.get(2){
            Some(s) => String::from(s),
            None => String::from("9001")
        };
        let mut s = String::new();
        match read.read_line(&mut s){
            Ok(n) => {
                let temp: Vec<&str> = s.split_whitespace().collect();
                req.rType = match temp.get(0){
                    Some(s) => match *s{
                        "Put" | "put" => RequestType::Put(),
                        "Get" | "get" => RequestType::Get(),
                        _ => RequestType::None,
                    }
                    None => continue 'inputLoop,
                };
                req.fileName = match temp.get(1){
                    Some(s) => String::from(*s),
                    None => continue 'inputLoop,
                };
                thread::spawn(move || {
                    send_request(req);
                });
            },
            Err(e) => println!("{}",e)
        };  
    }
}
fn send_request(req: Request) -> io::Result<()>{
    let mut addr = String::new();
    addr.push_str(req.addr.as_str());
    addr.push_str(":");
    addr.push_str(req.port.as_str());

    let mut stream = TcpStream::connect(addr)?;
    let mut request = match req.rType{
        RequestType::Get() =>  String::from("Get"),
        RequestType::Put() =>  String::from("Set"),
        RequestType::None => return Ok(())
    };
    request.push_str(" ");
    request.push_str(req.fileName.as_str());
    
    stream.write(request.as_bytes())?;
    thread::spawn(move || {
        match handle_incoming(stream, req){
            Ok(n) => (),
            Err(e) => println!("{}",e),
        };
    });
    Ok(())
}

fn handle_incoming(mut stream: TcpStream, req: Request) -> io::Result<()>{
    let file = OpenOptions::new().read(true).write(true).create(true).open(req.fileName)?;
    let mut writer = BufWriter::new(file);
    let mut reader = BufReader::new(stream);
    let mut buf:Vec<u8> = Vec::new();
    'readloop: loop{
        match reader.read_to_end(&mut buf){
            Ok(s) => {
                if s == 0{
                    break 'readloop;
                }
            },
            Err(e) => (),
        };      
    }
    match writer.write_all(&buf){
        Ok(s) => (),
        Err(e) => ()
    };
    Ok(())
}
