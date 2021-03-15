//! top parser for technology file

use crate::model::{TfData, TfLayerEnum};
use nom::branch::alt;
use nom::combinator::map;

use nom::multi::many1;

use super::{
    base_parser::tf_comment, color_parser::*, contact_parser::*, layer_dt_parser::*,
    layer_parser::*, rule_parser::*, stipple_parser::*, technology_parser::*, tile_parser::*,
};

use crate::TfRes;
use nom::sequence::tuple;
/// Given the input, return TfData abstruct
pub fn tf_parser(input: &str) -> TfRes<&str, TfData> {
    tuple((
        many1(tf_comment),
        technology_parser,
        many1(color_parser),
        many1(stipple_parser),
        tile_parser,
        many1(alt((
            map(layer_parser, |x| TfLayerEnum::Layer(x)),
            map(layer_dt_parser, |x| TfLayerEnum::DataType(x)),
        ))),
        many1(contact_parser),
        many1(designrule_parser),
        pr_rule_parser,
        many1(density_rule_parser),
    ))(input)
    .map(|(res, data)| {
        let mut layers = Vec::new();
        let mut layer_dts = Vec::new();
        for item in data.5 {
            match item {
                TfLayerEnum::Layer(x) => layers.push(x),
                TfLayerEnum::DataType(x) => layer_dts.push(x),
            }
        }
        (
            res,
            TfData {
                basic: data.1,
                color: data.2,
                stipple: data.3,
                tile: data.4,
                layer: layers,
                layer_dt: layer_dts,
                contact: data.6,
                designrule: data.7,
                prrule: data.8,
                densityrule: data.9,
            },
        )
    })
}
