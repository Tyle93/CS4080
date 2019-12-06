
extern crate rayon;

use std::io;
use std::env;
use rayon::prelude::*;
use std::fs::*;
use std::fs;
use std::sync::Mutex;
use std::collections::*;
use std::path::Path;


fn main() {
    let fileVec: Vec<String> = Vec::new();
    let files = Mutex::new(fileVec);
    env::args().skip(1).collect::<Vec<String>>().par_iter().for_each(move |arg| {
        let dir = Path::new(arg.as_str());
       // visit_dirs(dir, cb: &dyn Fn(&DirEntry))
        //findFile(&arg.to_string(), &files);
    });
}

fn findFile(name: &String, files: &Mutex<Vec<String>> ){
    let path = Path::new(name.as_str());
    if path.is_dir(){
        for p in fs::read_dir(path){
            let entry = p;
            
        }
    }   
}

fn visit_dirs(dir: &Path, cb: &dyn Fn(&DirEntry)) -> io::Result<()> {
    if dir.is_dir() {
        for entry in fs::read_dir(dir)? {
            let entry = entry?;
            let path = entry.path();
            if path.is_dir() {
                visit_dirs(&path, cb)?;
            } else {
                cb(&entry);
            }
        }
    }
    Ok(())
}

