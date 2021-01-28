use super::base_parser::{boolean_number, float, positive_number, qstring, ws};

use nom::bytes::complete::tag;

use crate::model::TfContact;
use nom::branch::{alt, permutation};
use nom::combinator::{map, opt};

use nom::sequence::{delimited, preceded, tuple};
use nom::IResult;

fn contact_layer(input: &str) -> IResult<&str, (&str, &str, &str)> {
    tuple((
        preceded(tuple((ws(tag("cutLayer")), ws(tag("=")))), qstring),
        preceded(tuple((ws(tag("lowerLayer")), ws(tag("=")))), qstring),
        preceded(tuple((ws(tag("upperLayer")), ws(tag("=")))), qstring),
    ))(input)
}

fn contact_cutsize(input: &str) -> IResult<&str, (f32, f32)> {
    tuple((
        preceded(tuple((ws(tag("cutWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("cutHeight")), ws(tag("=")))), float),
    ))(input)
}

fn contact_type(input: &str) -> IResult<&str, bool> {
    alt((
        map(
            preceded(
                tuple((ws(tag("isDefaultContact")), ws(tag("=")))),
                boolean_number,
            ),
            |_| true,
        ),
        map(
            preceded(
                tuple((ws(tag("isFatContact")), ws(tag("=")))),
                boolean_number,
            ),
            |_| false,
        ),
    ))(input)
}

fn contact_cutspacing(input: &str) -> IResult<&str, (f32, Option<f32>)> {
    tuple((
        preceded(tuple((ws(tag("minCutSpacing")), ws(tag("=")))), float),
        opt(preceded(
            tuple((ws(tag("viaFarmSpacing")), ws(tag("=")))),
            float,
        )),
    ))(input)
}

fn contact_resistance(input: &str) -> IResult<&str, (f32, f32, f32)> {
    tuple((
        preceded(tuple((ws(tag("unitMinResistance")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("unitNomResistance")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("unitMaxResistance")), ws(tag("=")))), float),
    ))(input)
}

fn contact_layer_enc(input: &str) -> IResult<&str, (f32, f32, f32, f32)> {
    tuple((
        preceded(tuple((ws(tag("upperLayerEncWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("upperLayerEncHeight")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("lowerLayerEncWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("lowerLayerEncHeight")), ws(tag("=")))), float),
    ))(input)
}

pub fn contact_parser(input: &str) -> IResult<&str, TfContact> {
    let (input, (name, data)) = tuple((
        preceded(ws(tag("ContactCode")), qstring),
        delimited(
            ws(tag("{")),
            tuple((
                preceded(
                    tuple((ws(tag("contactCodeNumber")), ws(tag("=")))),
                    positive_number,
                ),
                permutation((contact_layer, opt(contact_type))),
                permutation((
                    contact_cutsize,
                    contact_layer_enc,
                    contact_cutspacing,
                    opt(contact_resistance),
                )),
            )),
            ws(tag("}")),
        ),
    ))(input)?;
    Ok((
        input,
        TfContact {
            name: name.to_string(),
            contact_id: data.0,
            layer: (
                ((data.1).0).0.to_string(),
                ((data.1).0).1.to_string(),
                ((data.1).0).2.to_string(),
            ),
            layer_enc: (data.2).1,
            unit_resistance: (data.2).3,
            cutsize: (data.2).0,
            cutspacing: ((data.2).2).0,
            viafarm_spacing: ((data.2).2).1,
            is_defaultcontact: (data.1).1.map_or(false, |x| x),
            is_fatcontact: (data.1).1.map_or(false, |x| !x),
        },
    ))
}

#[cfg(test)]
mod test {
    use super::*;
    #[test]
    fn test_contactcode() {
        let input = "ContactCode \"VIA1BC_alt_r90\" {
        contactCodeNumber       = 16
        cutLayer            = \"V1\"
        lowerLayer          = \"M1\"
        upperLayer          = \"M2\"
        isDefaultContact        = 1
        cutWidth            = 0.07
        cutHeight           = 0.07
        upperLayerEncWidth      = 0
        upperLayerEncHeight     = 0.03
        lowerLayerEncWidth      = 0
        lowerLayerEncHeight     = 0.03
        minCutSpacing           = 0.07
        unitMinResistance       = 0.00603
        unitNomResistance       = 0.0067
        unitMaxResistance       = 0.00737
}";
        let (_, _) = contact_parser(input).unwrap();
    }
}
