use super::base_parser::{positive_number, qstring, ws};
use crate::TfJson;
use nom::bytes::complete::take_until;
use nom::combinator::value;
use nom::{
    bytes::complete::tag,
    error::context,
    sequence::{delimited, preceded, tuple},
};

use crate::{model::TfContact, TfRes};

fn contact_layer(input: &str) -> TfRes<&str, (&str, &str, &str)> {
    tuple((
        preceded(tuple((ws(tag("cutLayer")), ws(tag("=")))), qstring),
        preceded(tuple((ws(tag("lowerLayer")), ws(tag("=")))), qstring),
        preceded(tuple((ws(tag("upperLayer")), ws(tag("=")))), qstring),
    ))(input)
}

pub fn contact_parser(input: &str) -> TfRes<&str, TfContact> {
    context(
        "Contact Section",
        tuple((
            preceded(ws(tag("ContactCode")), qstring),
            delimited(
                ws(tag("{")),
                tuple((
                    preceded(
                        tuple((ws(tag("contactCodeNumber")), ws(tag("=")))),
                        positive_number,
                    ),
                    contact_layer,
                    value((), take_until("}")),
                )),
                ws(tag("}")),
            ),
        )),
    )(input)
    .map(|(res, (name, data))| {
        (
            res,
            TfContact {
                name: name.to_string(),
                contact_id: data.0,
                layer: (
                    (data.1).0.to_string(),
                    (data.1).1.to_string(),
                    (data.1).2.to_string(),
                ),
                contact_rule: None::<TfJson>,
            },
        )
    })
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
