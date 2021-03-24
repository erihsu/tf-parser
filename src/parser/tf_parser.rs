//! top parser for technology file

use crate::model::{TfData, TfLayerEnum};
use nom::branch::{alt, permutation};
use nom::combinator::map;

use nom::multi::{many0, many1};

use super::{
    base_parser::tf_comment, color_parser::*, contact_parser::*, layer_parser::*, rule_parser::*,
    stipple_parser::*, technology_parser::*, tile_parser::*,
};

use crate::TfRes;
use nom::sequence::preceded;
/// Given the input, return TfData abstruct
pub fn tf_parser(input: &str) -> TfRes<&str, TfData> {
    permutation((
        preceded(many1(tf_comment), technology_parser),
        many1(alt((
            map(layer_parser, |x| TfLayerEnum::Layer(x)),
            map(layer_dt_parser, |x| TfLayerEnum::DataType(x)),
        ))),
        many1(contact_parser),
        many1(designrule_parser),
        many0(density_rule_parser),
        pr_rule_parser,
        tile_parser,
        many0(color_parser),
        many0(stipple_parser),
    ))(input)
    .map(|(res, data)| {
        let mut layers = Vec::new();
        let mut layer_dts = Vec::new();
        for item in data.1 {
            match item {
                TfLayerEnum::Layer(x) => layers.push(x),
                TfLayerEnum::DataType(x) => layer_dts.push(x),
            }
        }
        (
            res,
            TfData {
                basic: data.0,
                color: Vec::new(),
                stipple: Vec::new(),
                tile: data.6,
                layer: layers,
                layer_dt: layer_dts,
                contact: data.2,
                designrule: data.3,
                prrule: data.5,
                densityrule: data.4,
            },
        )
    })
}
