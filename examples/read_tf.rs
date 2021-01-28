use std::fs::File;
use std::io::Read;
use std::time::*;
use tf_parser::tf_parser;
fn main() {
    let mut input_tf_file = File::open("scc40nll_hd_8lm_2tm.tf").expect("Invalid Directory");
    let mut input_string = String::new();
    input_tf_file.read_to_string(&mut input_string).unwrap();

    println!("Load Tf...");

    let now = SystemTime::now();
    let (_, _) = tf_parser(&input_string).unwrap();
    let def2vulcan = SystemTime::now();

    println!(
        "Successfully. Time used: {:?}.",
        def2vulcan.duration_since(now)
    );
}
