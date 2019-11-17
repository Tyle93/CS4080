

fn main() {
    println!("Hello, world!");

    let mut x = String::from("This is a String");

    let a = do_thing(&mut x);

    println!("{}",a);
}


fn do_thing(a: &mut String) -> &String{
    let b = String::from("This");
    a.push_str(&b[..]);
    a
}


