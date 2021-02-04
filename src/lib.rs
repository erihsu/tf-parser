//! The tf_parser is used to parse Technology(.tf) file, which is a part of [EDA](https://en.wikipedia.org/wiki/Electronic_design_automation) P&R tool.
//! This file is usually provided by Foundary to describe basic technology information, technology layer, technology via, design rules, density rules, etc.

//! # Example
//!
//!
//!
//!

mod model;
mod parser;
pub use model::TfData;
pub use parser::tf_parser::tf_parser;
use std::fs;
use std::path::Path;

/// parse tf file into TfData struct
pub fn parse_tf<P>(file_path: P) -> Result<TfData, Box<dyn std::error::Error>>
where
    P: AsRef<Path>,
{
    let input_string = fs::read_to_string(file_path)?;
    let (_, result) = tf_parser(&input_string).unwrap();
    Ok(result)
}
