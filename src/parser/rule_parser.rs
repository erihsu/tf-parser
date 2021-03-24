use super::base_parser::{float, positive_number, qstring, ws};
use crate::TfJson;
use nom::bytes::complete::take_until;
use nom::combinator::value;

use nom::{
    bytes::complete::tag,
    combinator::opt,
    error::context,
    sequence::{delimited, preceded, tuple},
};

use crate::{
    model::{TfDensityRule, TfDesignRule, TfPRRule},
    TfRes,
};

fn layer_pair(input: &str) -> TfRes<&str, (&str, &str)> {
    tuple((
        preceded(tuple((ws(tag("layer1")), ws(tag("=")))), qstring),
        preceded(tuple((ws(tag("layer2")), ws(tag("=")))), qstring),
    ))(input)
}

pub fn designrule_parser(input: &str) -> TfRes<&str, TfDesignRule> {
    context(
        "DesignRule Section",
        preceded(
            ws(tag("DesignRule")),
            delimited(
                ws(tag("{")),
                tuple((layer_pair, value((), take_until("}")))),
                ws(tag("}")),
            ),
        ),
    )(input)
    .map(|(res, data)| {
        (
            res,
            TfDesignRule {
                layer1: (data.0).0.to_string(),
                layer2: (data.0).1.to_string(),
                rule_data: None::<TfJson>,
            },
        )
    })
}

pub fn pr_rule_parser(input: &str) -> TfRes<&str, TfPRRule> {
    context(
        "PR Rule Section",
        preceded(
            ws(tag("PRRule")),
            delimited(
                ws(tag("{")),
                tuple((
                    preceded(tuple((ws(tag("rowSpacingTopTop")), ws(tag("=")))), float),
                    opt(preceded(
                        tuple((ws(tag("rowSpacingTopBot")), ws(tag("=")))),
                        float,
                    )),
                    preceded(tuple((ws(tag("rowSpacingBotBot")), ws(tag("=")))), float),
                    preceded(
                        tuple((ws(tag("abuttableTopTop")), ws(tag("=")))),
                        positive_number,
                    ),
                    preceded(
                        tuple((ws(tag("abuttableTopBot")), ws(tag("=")))),
                        positive_number,
                    ),
                    preceded(
                        tuple((ws(tag("abuttableBotBot")), ws(tag("=")))),
                        positive_number,
                    ),
                )),
                ws(tag("}")),
            ),
        ),
    )(input)
    .map(|(res, data)| {
        (
            res,
            TfPRRule {
                rowspacing_toptop: data.0,
                rowspacing_topbot: data.1,
                rowspacing_botbot: data.2,
                abuttable_toptop: data.3,
                abuttabletopbot: data.4,
                abuttablebotbot: data.5,
            },
        )
    })
}

pub fn density_rule_parser(input: &str) -> TfRes<&str, TfDensityRule> {
    context(
        "DensityRule Section",
        preceded(
            ws(tag("DensityRule")),
            delimited(
                ws(tag("{")),
                tuple((
                    preceded(tuple((ws(tag("layer")), ws(tag("=")))), qstring),
                    preceded(
                        tuple((ws(tag("windowSize")), ws(tag("=")))),
                        positive_number,
                    ),
                    preceded(
                        tuple((ws(tag("minDensity")), ws(tag("=")))),
                        positive_number,
                    ),
                    preceded(
                        tuple((ws(tag("maxDensity")), ws(tag("=")))),
                        positive_number,
                    ),
                )),
                ws(tag("}")),
            ),
        ),
    )(input)
    .map(|(res, data)| {
        (
            res,
            TfDensityRule {
                layer: data.0.to_string(),
                window_size: data.1,
                min_density: data.2,
                max_density: data.3,
            },
        )
    })
}

#[cfg(test)]
mod test {
    use super::*;
    #[test]
    fn test_designrule() {
        let input = "DesignRule {
        layer1              = \"V3\"
        layer2              = \"V2\"
        minSpacing          = 0
        stackable           = 1
}
";
        let (_, _) = designrule_parser(input).unwrap();
    }

    #[test]
    fn test_designrule2() {
        let input = "DesignRule    {
            layer1              = \"via4Blockage\"
            layer2              = \"V4\"
            minSpacing          = 0.1
    }";
        let (_, _) = designrule_parser(input).unwrap();
    }

    #[test]
    fn test_designrule3() {
        let input = "DesignRule     {
            layer1 = \"M\"
            layer2 = \"CT\"
            fatWireViaEncTblSize = 1
            fatWireViaEncWidthThresholdTbl = (  0.121  )
            fatWireViaEncParallelLengthThresholdTbl = (  0.27  )
            fatWireViaEncMaxSpacingThresholdTbl = (  0.081  )
            fatWireViaEnclosureTbl = (  0.015  )
            fatWireViaArrayExcludedTbl = (1)
    }";
        let (_, _) = designrule_parser(input).unwrap();
    }

    #[test]
    fn test_designrule4() {
        let input = "DesignRule     {
            layer1 = \"M3\"
            layer2 = \"V2\"
            endOfLineEnc2NeighborTblSize = 7
            endOfLineEnc2NeighborThreshold = 0.099
            endOfLineEnc2NeighborCornerKeepoutWidth = 0.031
            endOfLineEnc2NeighborSideKeepoutLength = 0.096
            endOfLineEnc2NeighborSideMinSpacing = 0.08
            endOfLineEnc2NeighborMinLength = 0.069
            endOfLineEnc2NeighborTbl = (0.045, 0.04, 0.035, 0.03, 0.025, 0.02, 0.015)
            endOfLineEnc2NeighborSpacingTbl = (0.075, 0.08, 0.085, 0.09, 0.095, 0.100, 0.105)
            endOfLineEnc2NeighborViaArrayExcludedTbl = (0, 0, 0, 0, 0, 0, 0)
            endOfLineEnc2NeighborWireMinThreshold = 0.07
    }   ";
        let (_, _) = designrule_parser(input).unwrap();
    }

    #[test]
    fn test_prrule() {
        let input = "PRRule     {
        rowSpacingTopTop        = 0
        rowSpacingBotBot        = 0
        abuttableTopTop         = 1
        abuttableTopBot         = 0
        abuttableBotBot         = 1
}";
        let (_, _) = pr_rule_parser(input).unwrap();
    }

    #[test]
    fn test_density_rule() {
        let input = "DensityRule    {
        layer               = \"TM2\"
        windowSize                      = 200
        minDensity          = 20
        maxDensity          = 85
}";
        let (_, _) = density_rule_parser(input).unwrap();
    }
}
