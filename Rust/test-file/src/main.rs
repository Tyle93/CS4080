extern crate hyper;
extern crate hyper_tls;
extern crate pretty_env_logger;

use futures::{future, Future, Stream};
use hyper::{
    client::HttpConnector, rt, service::service_fn, Body, Client, Request,
    Response, Server
};

fn main(){
    pretty_env_logger::init();

    let addr = "127.0.0.1::80".parse().unwrap();

    rt::run(future::lazy(move || {
        let client = Client::new();
        let new_service = move || {
            let client = client.clone();
            service_fn(move |req| )
        }
        let server = Server::bind(&addr);

        server
    }));
    


}