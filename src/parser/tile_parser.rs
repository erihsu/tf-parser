use super::base_parser::{float, qstring, ws};

use nom::{
    bytes::complete::tag,
    error::context,
    sequence::{delimited, preceded, tuple},
};

use crate::{model::TfTile, TfRes};

pub fn tile_parser(input: &str) -> TfRes<&str, TfTile> {
    context(
        "Tile Section",
        tuple((
            preceded(ws(tag("Tile")), qstring),
            delimited(
                ws(tag("{")),
                tuple((
                    preceded(tuple((ws(tag("width")), ws(tag("=")))), float),
                    preceded(tuple((ws(tag("height")), ws(tag("=")))), float),
                )),
                ws(tag("}")),
            ),
        )),
    )(input)
    .map(|(res, (name, data))| {
        (
            res,
            TfTile {
                name: name.to_string(),
                width: data.0,
                height: data.1,
            },
        )
    })
}

#[cfg(test)]
mod test {
    use super::*;
    #[test]
    fn test_tile() {
        let input = "Tile       \"unit\" {
        width               = 0.19
        height              = 1.12
}";
        let (_, _) = tile_parser(input).unwrap();
    }
}
