use super::base_parser::{float, qstring, ws};

use nom::bytes::complete::tag;

use crate::model::TfTile;

use nom::sequence::{delimited, preceded, tuple};
use nom::IResult;

pub fn tile_parser(input: &str) -> IResult<&str, TfTile> {
    let (input, (name, data)) = tuple((
        preceded(ws(tag("Tile")), qstring),
        delimited(
            ws(tag("{")),
            tuple((
                preceded(tuple((ws(tag("width")), ws(tag("=")))), float),
                preceded(tuple((ws(tag("height")), ws(tag("=")))), float),
            )),
            ws(tag("}")),
        ),
    ))(input)?;
    Ok((
        input,
        TfTile {
            name: name.to_string(),
            width: data.0,
            height: data.1,
        },
    ))
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
