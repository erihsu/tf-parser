use super::base_parser::{boolean_number, positive_number, qstring, ws};

use crate::{model::TfStipple, TfRes};
use nom::{
    bytes::complete::tag,
    error::context,
    multi::separated_list1,
    sequence::{delimited, preceded, tuple},
};

fn pattern_list(input: &str) -> TfRes<&str, Vec<bool>> {
    delimited(
        ws(tag("(")),
        separated_list1(tag(","), boolean_number),
        ws(tag(")")),
    )(input)
}

pub fn stipple_parser(input: &str) -> TfRes<&str, TfStipple> {
    context(
        "Stipple Section",
        tuple((
            preceded(ws(tag("Stipple")), qstring),
            delimited(
                ws(tag("{")),
                tuple((
                    preceded(tuple((ws(tag("width")), ws(tag("=")))), positive_number),
                    preceded(tuple((ws(tag("height")), ws(tag("=")))), positive_number),
                    preceded(tuple((ws(tag("pattern")), ws(tag("=")))), pattern_list),
                )),
                ws(tag("}")),
            ),
        )),
    )(input)
    .map(|(res, (stipple_name, data))| {
        (
            res,
            TfStipple {
                name: stipple_name.to_string(),
                width: data.0,
                height: data.1,
                pattern: data.2,
            },
        )
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn test_stipple() {
        let input = "Stipple       \"rhidot\" {
        width           = 16
        height          = 16
        pattern         = (0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
                       1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
                       0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
                       1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
                       0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
                       1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
                       0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
                       1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
                       0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
                       1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
                       0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
                       1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
                       0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
                       1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
                       0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
                       1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0) 
}";
        let (_, _) = stipple_parser(input).unwrap();
    }
}
