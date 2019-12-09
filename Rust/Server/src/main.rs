extern crate rayon;
use rayon::prelude::*;
use std::net::{TcpListener,Incoming,TcpStream};
use std::io::prelude::*;
use std::env;
use std::thread;
use std::io;
use std::io::Error;
fn handle_connection(mut stream: TcpStream) -> io::Result<()>{
    let mut buf: [u8; 512] = [0;512];   
    let bytes_read = stream.read(&mut buf)?;
    Ok(())
}

 fn main() {

    let args = env::args().collect::<Vec<String>>();
    let mut addr = String::from(args[1].as_str());
    addr.push_str(":");
    addr.push_str(args[2].as_str());
    let listener = TcpListener::bind(addr).unwrap();

   loop{
       listener.incoming().collect::<Vec<io::Result<TcpStream>>>().par_iter().for_each(move |conn|{
           let c = conn.
       });
   }
}
