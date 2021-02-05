//! Technology file subparser collection

mod base_parser;
mod color_parser;
mod contact_parser;
mod layer_dt_parser;
mod layer_parser;
mod rule_parser;
mod stipple_parser;
mod technology_parser;
mod tf_parser;
mod tile_parser;

pub use tf_parser::tf_parser;
