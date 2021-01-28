use super::base_parser::{boolean_number, positive_number, qstring, ws};

use nom::bytes::complete::tag;

use crate::model::TfStipple;

use nom::multi::separated_list1;
use nom::sequence::{delimited, preceded, tuple};
use nom::IResult;

fn pattern_list(input: &str) -> IResult<&str, Vec<bool>> {
    delimited(
        ws(tag("(")),
        separated_list1(tag(","), boolean_number),
        ws(tag(")")),
    )(input)
}

pub fn stipple_parser(input: &str) -> IResult<&str, TfStipple> {
    let (input, (stipple_name, data)) = tuple((
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
    ))(input)?;
    Ok((
        input,
        TfStipple {
            name: stipple_name.to_string(),
            width: data.0,
            height: data.1,
            pattern: data.2,
        },
    ))
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
