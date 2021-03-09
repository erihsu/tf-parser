//! The tf_parser is used to parse Technology(.tf) file, which is a part of [EDA](https://en.wikipedia.org/wiki/Electronic_design_automation) P&R tool.
//! This file is usually provided by Foundary (like [TSMC](https://en.wikipedia.org/wiki/TSMC),[GF](https://en.wikipedia.org/wiki/GlobalFoundries),
//! [SMIC](https://en.wikipedia.org/wiki/Semiconductor_Manufacturing_International_Corporation),etc)
//! to describe basic technology information, technology layer, technology via, design rules, density rules, etc.

//! # Example
//!```rust
//!use tf_parser::TfData;
//!pub fn parse_tf<P>(file_path: P) -> Result<TfData, Box<dyn std::error::Error>>
//!where
//!   P: AsRef<Path>,
//!{
//!   let tf_data: TfData = fs::read_to_string(file_path)?.parse()?;
//!   Ok(tf_data)
//!}
//!let data = parse_tf("example.tf");
//!```
//!

//! # Feature
//! 1. **Easy Embedded**. With this crate, you can easily embed parse technology file into your EDA toolchain
//! 2. **Friendly Error Feedback**. The tf_parser use [VerboseError](https://docs.rs/nom/6.1.0/nom/error/struct.VerboseError.html) to locate the error
//! when it first meets syntax error in the technology file

//! # Limitation
//! The parser currently just support Synopsys Appolo compatible technology file format. It will meet failure when parsing .techfile for Cadence pdks

pub mod model;
pub mod parser;

use model::*;
use parser::tf_parser;

use nom::{
    error::{convert_error, VerboseError},
    Err, IResult,
};
use std::{
    io::{Error, ErrorKind},
    str::FromStr,
};

impl FromStr for TfData {
    type Err = Error;
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match tf_parser(s) {
            Ok((_, u)) => Ok(u),
            Err(Err::Error(e)) => {
                println!("[TFParser] `VerboseError`:\n{}", convert_error(s, e));
                Err(Error::new(
                    ErrorKind::InvalidData,
                    "Invalid Technology File",
                ))
            }
            _ => Err(Error::new(
                ErrorKind::InvalidData,
                "Invalid Technology File",
            )),
        }
    }
}

pub type TfRes<T, U> = IResult<T, U, VerboseError<T>>;
