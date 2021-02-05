use super::base_parser::{boolean_number, positive_number, qnumber, qstring, ws};

use nom::{
    branch::alt,
    bytes::complete::tag,
    combinator::map,
    error::context,
    sequence::{delimited, preceded, tuple},
};

use crate::{
    model::{ColorEnum, TfLayerDataType},
    TfRes,
};

pub fn layer_dt_parser(input: &str) -> TfRes<&str, TfLayerDataType> {
    context(
        "Layer Data Type Section",
        tuple((
            preceded(ws(tag("LayerDataType")), qstring),
            delimited(
                ws(tag("{")),
                tuple((
                    preceded(
                        tuple((ws(tag("layerNumber")), ws(tag("=")))),
                        positive_number,
                    ), // 0
                    preceded(
                        tuple((ws(tag("dataTypeNumber")), ws(tag("=")))),
                        positive_number,
                    ), // 1
                    preceded(tuple((ws(tag("visible")), ws(tag("=")))), boolean_number), // 2
                    preceded(tuple((ws(tag("selectable")), ws(tag("=")))), boolean_number), // 3
                    preceded(tuple((ws(tag("blink")), ws(tag("=")))), boolean_number),   // 4
                    preceded(
                        tuple((ws(tag("color")), ws(tag("=")))),
                        alt((
                            map(qstring, |x| ColorEnum::SelfDef(x.to_string())),
                            map(qnumber, |x| ColorEnum::Builtin(x)),
                        )),
                    ), // 5
                    preceded(tuple((ws(tag("lineStyle")), ws(tag("=")))), qstring),      // 6
                    preceded(tuple((ws(tag("pattern")), ws(tag("=")))), qstring),        // 7
                )),
                ws(tag("}")),
            ),
        )),
    )(input)
    .map(|(res, (name, data))| {
        (
            res,
            TfLayerDataType {
                name: name.to_string(),
                layer_number: data.0,
                data_type_number: data.1,
                visible: data.2,
                selectable: data.3,
                blink: data.4,
                color: data.5,
                line_style: data.6.to_string(),
                pattern: data.7.to_string(),
            },
        )
    })
}
