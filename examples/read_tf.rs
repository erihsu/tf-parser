use std::time::*;
use tf_parser::parse_tf;
fn main() {
    let now = SystemTime::now();
    let _ = parse_tf("scc40nll_hd_8lm_2tm.tf");
    let def2vulcan = SystemTime::now();

    println!(
        "Successfully. Time used: {:?}.",
        def2vulcan.duration_since(now)
    );
}
