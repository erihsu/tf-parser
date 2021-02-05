use super::base_parser::{positive_number, qnumber, ws};
use nom::{
    bytes::complete::tag,
    error::context,
    sequence::{delimited, preceded, tuple},
};

use crate::{model::TfColor, TfRes};

pub fn color_parser(input: &str) -> TfRes<&str, TfColor> {
    context(
        "Color Section",
        tuple((
            preceded(ws(tag("Color")), positive_number),
            delimited(
                ws(tag("{")),
                tuple((
                    preceded(tuple((ws(tag("name")), ws(tag("=")))), qnumber),
                    preceded(
                        tuple((ws(tag("rgbDefined")), ws(tag("=")))),
                        positive_number,
                    ),
                    preceded(
                        tuple((ws(tag("redIntensity")), ws(tag("=")))),
                        positive_number,
                    ),
                    preceded(
                        tuple((ws(tag("greenIntensity")), ws(tag("=")))),
                        positive_number,
                    ),
                    preceded(
                        tuple((ws(tag("blueIntensity")), ws(tag("=")))),
                        positive_number,
                    ),
                )),
                ws(tag("}")),
            ),
        )),
    )(input)
    .map(|(res, (color_id, data))| {
        (
            res,
            TfColor {
                color_id: color_id,
                rgb_defined: match data.1 {
                    0 => false,
                    1 => true,
                    _ => unreachable!(),
                },
                red: data.2 as u8,
                green: data.3 as u8,
                blue: data.4 as u8,
            },
        )
    })
}

#[cfg(test)]
mod test {
    use super::*;
    #[test]
    fn test_color() {
        let input = "Color      14 {
        name                = \"14\"
        rgbDefined          = 1
        redIntensity            = 0
        greenIntensity          = 255
        blueIntensity           = 190
}";
        let (_, _) = color_parser(input).unwrap();
    }
}
