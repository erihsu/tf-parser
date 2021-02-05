use super::base_parser::{
    boolean_number, float, float_list, number_list, positive_number, qstring, ws,
};

use nom::{
    branch::{alt, permutation},
    bytes::complete::tag,
    combinator::{map, opt},
    error::context,
    sequence::{delimited, preceded, tuple},
};

use crate::{
    model::{TfCutRule, TfDensityRule, TfDesignRule, TfMetalRule, TfPRRule, TfPolyRule, TfRule},
    TfRes,
};

fn layer_pair(input: &str) -> TfRes<&str, (&str, &str)> {
    tuple((
        preceded(tuple((ws(tag("layer1")), ws(tag("=")))), qstring),
        preceded(tuple((ws(tag("layer2")), ws(tag("=")))), qstring),
    ))(input)
}

fn routelayer_rule(input: &str) -> TfRes<&str, TfMetalRule> {
    let (input, data) = tuple((
        preceded(tuple((ws(tag("minSpacing")), ws(tag("=")))), float),
        opt(preceded(
            tuple((ws(tag("stackable")), ws(tag("=")))),
            boolean_number,
        )),
    ))(input)?;
    Ok((
        input,
        TfMetalRule {
            minspacing: data.0,
            stackable: data.1.map_or(false, |x| x),
        },
    ))
}

fn cutlayer_rule(input: &str) -> TfRes<&str, TfCutRule> {
    let (input, data) = permutation((
        preceded(
            tuple((ws(tag("endOfLineEnc2NeighborTblSize")), ws(tag("=")))),
            positive_number,
        ),
        preceded(
            tuple((ws(tag("endOfLineEnc2NeighborThreshold")), ws(tag("=")))),
            float,
        ),
        preceded(
            tuple((
                ws(tag("endOfLineEnc2NeighborCornerKeepoutWidth")),
                ws(tag("=")),
            )),
            float,
        ),
        preceded(
            tuple((
                ws(tag("endOfLineEnc2NeighborSideKeepoutLength")),
                ws(tag("=")),
            )),
            float,
        ),
        preceded(
            tuple((ws(tag("endOfLineEnc2NeighborSideMinSpacing")), ws(tag("=")))),
            float,
        ),
        preceded(
            tuple((ws(tag("endOfLineEnc2NeighborMinLength")), ws(tag("=")))),
            float,
        ),
        preceded(
            tuple((ws(tag("endOfLineEnc2NeighborTbl")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((ws(tag("endOfLineEnc2NeighborSpacingTbl")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((
                ws(tag("endOfLineEnc2NeighborViaArrayExcludedTbl")),
                ws(tag("=")),
            )),
            float_list,
        ),
        preceded(
            tuple((
                ws(tag("endOfLineEnc2NeighborWireMinThreshold")),
                ws(tag("=")),
            )),
            float,
        ),
    ))(input)?;

    Ok((
        input,
        TfCutRule {
            tblsize: data.0,
            threshold: data.1,
            cornerkeepout_width: data.2,
            sidekeepout_length: data.3,
            sideminspacing: data.4,
            minlength: data.5,
            tbl: data.6,
            spacing_tbl: data.7,
            viaarray_excluded_tbl: data.8,
            wire_minthreshold: data.9,
        },
    ))
}

fn polylayer_rule(input: &str) -> TfRes<&str, TfPolyRule> {
    let (input, data) = tuple((
        preceded(
            tuple((ws(tag("fatWireViaEncTblSize")), ws(tag("=")))),
            positive_number,
        ),
        preceded(
            tuple((ws(tag("fatWireViaEncWidthThresholdTbl")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((
                ws(tag("fatWireViaEncParallelLengthThresholdTbl")),
                ws(tag("=")),
            )),
            float_list,
        ),
        preceded(
            tuple((ws(tag("fatWireViaEncMaxSpacingThresholdTbl")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((ws(tag("fatWireViaEnclosureTbl")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((ws(tag("fatWireViaArrayExcludedTbl")), ws(tag("=")))),
            number_list,
        ),
    ))(input)?;
    Ok((
        input,
        TfPolyRule {
            fat_wire_via_enc_tbl_size: data.0,
            fat_wire_via_enc_width_threshold_tbl: data.1,
            fat_wire_via_enc_parallel_length_threshold_tbl: data.2,
            fat_wire_via_enc_max_spacing_threshold_tbl: data.3,
            fat_wire_via_enclosure_tbl: data.4,
            fat_wire_via_array_excluded_tbl: data.5,
        },
    ))
}

pub fn designrule_parser(input: &str) -> TfRes<&str, TfDesignRule> {
    context(
        "DesignRule Section",
        preceded(
            ws(tag("DesignRule")),
            delimited(
                ws(tag("{")),
                tuple((
                    layer_pair,
                    alt((
                        map(routelayer_rule, |x| TfRule::MetalRule(x)),
                        map(cutlayer_rule, |x| TfRule::CutRule(x)),
                        map(polylayer_rule, |x| TfRule::PolyRule(x)),
                    )),
                )),
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
                rule_data: data.1,
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
