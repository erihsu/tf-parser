use std::fs;
use std::time::*;
fn main() {
    use tf_parser::model::TfData;
    let now = SystemTime::now();
    let _tf_data: TfData = fs::read_to_string("example.tf").unwrap().parse().unwrap();

    let get_tf = SystemTime::now();

    println!("Successfully. Time used: {:?}.", get_tf.duration_since(now));
}
