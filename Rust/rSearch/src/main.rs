
extern crate rayon;

use std::io;
use std::env;
use rayon::prelude::*;
use std::fs;
use std::sync::Mutex;
use std::path::Path;


fn main()  {
    let fileVec: Vec<String> = Vec::new();
    let files = Mutex::new(fileVec);

    env::args().skip(1).collect::<Vec<String>>().par_iter().for_each(|arg| {
        let dirStr = String::from(env::current_dir().unwrap().as_path().to_str().unwrap());
        match find_file(dirStr, &files, arg){
            Ok(()) => (),
            Err(e) => println!("{:}", e)
        };
    });

    let g = files.lock().unwrap();
    for f in g.iter(){
        println!("{}",f);
    }
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
                if new_str.contains(name){
                    let mut guard = files.lock().unwrap();
                    guard.push(new_str);
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



