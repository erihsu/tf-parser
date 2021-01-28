use nom::branch::alt;

use nom::bytes::complete::{tag, take_until};
use nom::character::complete::{alpha1, alphanumeric1, char, digit1, multispace0, one_of};
use nom::combinator::{map, map_res, opt, recognize, value};
use nom::error::ParseError;
use nom::multi::{many0, many1, separated_list1};

use nom::sequence::{delimited, pair, preceded, terminated, tuple};
use nom::IResult;
use std::str;
use std::str::FromStr;

// basic parse. Independent from def_parser but it's the most basic parser in def_parser.

/// A combinator that takes a parser `inner` and produces a parser that also consumes both leading and
/// trailing whitespace, returning the output of `inner`.
pub fn ws<'a, F: 'a, O, E: ParseError<&'a str>>(
    inner: F,
) -> impl FnMut(&'a str) -> IResult<&'a str, O, E>
where
    F: FnMut(&'a str) -> IResult<&'a str, O, E>,
{
    delimited(multispace0, inner, multispace0)
}

// // typical string
// // ie. abcdef, de234, jkl_mn, ...
pub fn tstring(input: &str) -> IResult<&str, &str> {
    ws(recognize(pair(
        alt((alpha1, tag("_"))),
        many0(alt((alphanumeric1, tag("_")))),
    )))(input)
}

// // parse string that is surrounded by " and ".
// // ie, "abc", "def"
pub fn qstring(input: &str) -> IResult<&str, &str> {
    ws(recognize(delimited(tag("\""), tstring, tag("\""))))(input)
}

// // parse string that is surrounded by " and ".
// // ie, "abc", "def"
pub fn qnumber(input: &str) -> IResult<&str, u32> {
    delimited(tag("\""), positive_number, tag("\""))(input)
}

// // unsigned integer number
// // ie, 100, 350
pub fn positive_number(input: &str) -> IResult<&str, u32> {
    ws(map_res(recognize(digit1), |res: &str| u32::from_str(res)))(input)
}

// // signed integer number
// // ie, 100, -20
pub fn number(input: &str) -> IResult<&str, i32> {
    ws(map_res(
        recognize(pair(opt(alt((tag("+"), tag("-")))), digit1)),
        |res: &str| i32::from_str(res),
    ))(input)
}

// parse unsigned floating number
// The following is adapted from the Python parser by Valentin Lorentz (ProgVal).
pub fn float(input: &str) -> IResult<&str, f32> {
    ws(map_res(
        alt((
            // Case one: .42
            recognize(tuple((
                char('.'),
                decimal,
                opt(tuple((one_of("eE"), opt(one_of("+-")), decimal))),
            ))), // Case two: 42e42 and 42.42e42
            recognize(tuple((
                decimal,
                opt(preceded(char('.'), decimal)),
                one_of("eE"),
                opt(one_of("+-")),
                decimal,
            ))), // Case three: 42. and 42.42
            recognize(tuple((decimal, char('.'), opt(decimal)))),
            recognize(decimal), // case four: integer representation of float number
        )),
        |res: &str| f32::from_str(res),
    ))(input)
}

pub fn decimal(input: &str) -> IResult<&str, &str> {
    recognize(many1(terminated(one_of("0123456789"), many0(char('_')))))(input)
}

pub fn boolean_number(input: &str) -> IResult<&str, bool> {
    map(number, |res| match res {
        0 => false,
        1 => true,
        _ => unreachable!(),
    })(input)
}

pub fn float_list(input: &str) -> IResult<&str, Vec<f32>> {
    delimited(ws(tag("(")), separated_list1(tag(","), float), ws(tag(")")))(input)
}

pub fn number_list(input: &str) -> IResult<&str, Vec<u32>> {
    delimited(
        ws(tag("(")),
        separated_list1(tag(","), positive_number),
        ws(tag(")")),
    )(input)
}

pub fn number_qlist(input: &str) -> IResult<&str, Vec<u32>> {
    delimited(
        ws(tag("\"")),
        separated_list1(tag(","), positive_number),
        ws(tag("\"")),
    )(input)
}

pub fn tf_comment(input: &str) -> IResult<&str, ()> {
    value(
        (), // Output is thrown away.
        tuple((ws(tag("/*")), take_until("*/"), ws(tag("*/")))),
    )(input)
}

#[cfg(test)]
mod test {

    use super::*;
    #[test]
    fn test_comment() {
        let input = "
/* Date: Oct.08.2012                                                     */";
        let (_, _) = tf_comment(input).unwrap();
    }
}
