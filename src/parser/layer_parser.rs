use super::base_parser::{
    boolean_number, float, float_list, number_list, number_qlist, positive_number, qnumber,
    qstring, ws,
};
use nom::branch::{alt, permutation};

use nom::bytes::complete::tag;

use crate::model::{
    ColorEnum, CutFatExtTbl, CutFatTble, CutLayerRule, EndLine2Neighbor, LayerRule, MetalFatTbl,
    MetalLayerRule, PolyLayerRule, SpecialCutLayerRule, SpecialMetalLayerRule, TfLayer,
};
use nom::combinator::{map, opt};
use nom::sequence::{delimited, preceded, tuple};
use nom::IResult;

fn layer_resistance(input: &str) -> IResult<&str, (f32, f32, f32)> {
    tuple((
        preceded(tuple((ws(tag("unitMinResistance")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("unitNomResistance")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("unitMaxResistance")), ws(tag("=")))), float),
    ))(input)
}

fn layer_height_from_sub(input: &str) -> IResult<&str, (f32, f32, f32)> {
    tuple((
        preceded(
            tuple((ws(tag("unitMinHeightFromSub")), ws(tag("=")))),
            float,
        ),
        preceded(
            tuple((ws(tag("unitNomHeightFromSub")), ws(tag("=")))),
            float,
        ),
        preceded(
            tuple((ws(tag("unitMaxHeightFromSub")), ws(tag("=")))),
            float,
        ),
    ))(input)
}

fn layer_thickness(input: &str) -> IResult<&str, (f32, f32, f32)> {
    tuple((
        preceded(tuple((ws(tag("unitMinThickness")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("unitNomThickness")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("unitMaxThickness")), ws(tag("=")))), float),
    ))(input)
}

fn layer_fatobj(input: &str) -> IResult<&str, (f32, f32, f32, f32)> {
    tuple((
        preceded(tuple((ws(tag("fatWireThreshold")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("fatThinMinSpacing")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("fatFatMinSpacing")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("fatContactThreshold")), ws(tag("=")))), float),
    ))(input)
}

fn layer_fat_tbl(input: &str) -> IResult<&str, MetalFatTbl> {
    let (input, data) = tuple((
        preceded(
            tuple((ws(tag("fatTblDimension")), ws(tag("=")))),
            positive_number,
        ),
        preceded(
            tuple((ws(tag("fatTblParallelLength")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((ws(tag("fatTblThreshold")), ws(tag("=")))),
            float_list,
        ),
        preceded(tuple((ws(tag("fatTblSpacing")), ws(tag("=")))), float_list),
    ))(input)?;
    Ok((
        input,
        MetalFatTbl {
            fat_tbl_dimension: data.0,
            fat_tbl_threshold: data.1,
            fat_tbl_parallel_length: data.2,
            fat_tbl_spacing: data.3,
        },
    ))
}

fn layer_endline2neighbor(input: &str) -> IResult<&str, EndLine2Neighbor> {
    let (input, data) = tuple((
        preceded(
            tuple((ws(tag("endOfLine2NeighborThreshold")), ws(tag("=")))),
            float,
        ),
        preceded(
            tuple((ws(tag("endOfLine2NeighborMinSpacing")), ws(tag("=")))),
            float,
        ),
        preceded(
            tuple((ws(tag("endOfLine2NeighborSideMinSpacing")), ws(tag("=")))),
            float,
        ),
        preceded(
            tuple((
                ws(tag("endOfLine2NeighborCornerKeepoutWidth")),
                ws(tag("=")),
            )),
            float,
        ),
        preceded(
            tuple((ws(tag("endOfLine2NeighborSideKeepoutLength")), ws(tag("=")))),
            float,
        ),
    ))(input)?;
    Ok((
        input,
        EndLine2Neighbor {
            line2neighbor_threshold: data.0,
            line2neighbor_minspacing: data.1,
            line2neighbor_side_minspacing: data.2,
            line2neighbor_corner_keepout_width: data.3,
            line2neighbor_side_keepout_length: data.4,
        },
    ))
}

fn layer_minarea(input: &str) -> IResult<&str, (f32, f32)> {
    tuple((
        preceded(tuple((ws(tag("minArea")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("minEnclosedArea")), ws(tag("=")))), float),
    ))(input)
}

fn layer_current_density(input: &str) -> IResult<&str, f32> {
    preceded(tuple((ws(tag("maxCurrDensity")), ws(tag("=")))), float)(input)
}

fn metal_layerrule_parser(input: &str) -> IResult<&str, MetalLayerRule> {
    let (input, data) = tuple((
        preceded(tuple((ws(tag("pitch")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("defaultWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("minWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("minSpacing")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("maxWidth")), ws(tag("=")))), float),
        layer_fatobj,
        layer_current_density,
        layer_resistance,
        layer_height_from_sub,
        layer_thickness,
        layer_fat_tbl,
        layer_minarea,
        opt(layer_endline2neighbor),
    ))(input)?;
    Ok((
        input,
        MetalLayerRule {
            pitch: data.0,
            default_width: data.1,
            min_width: data.2,
            min_spacing: data.3,
            max_width: data.4,
            fat_wire_threshold: (data.5).0,
            fat_thin_minspacing: (data.5).1,
            fat_fat_minspacing: (data.5).2,
            max_current_density: data.6,
            unit_resistance: data.7,
            unit_thickness: data.9,
            height_from_sub: data.8,
            fat_tbl: data.10,
            min_area: (data.11).0,
            min_enclosed_area: (data.11).1,
            line2neighbor: data.12,
        },
    ))
}

fn cutlayer_fat_tbl(input: &str) -> IResult<&str, CutFatTble> {
    let (input, data) = tuple((
        preceded(
            tuple((ws(tag("fatTblDimension")), ws(tag("=")))),
            positive_number,
        ),
        preceded(
            tuple((ws(tag("fatTblThreshold")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((ws(tag("fatTblFatContactNumber")), ws(tag("=")))),
            number_list,
        ),
        preceded(
            tuple((ws(tag("fatTblFatContactMinCuts")), ws(tag("=")))),
            number_list,
        ),
    ))(input)?;
    Ok((
        input,
        CutFatTble {
            fat_tbl_dimension: data.0,
            fat_tbl_threshold: data.1,
            fat_tbl_fat_contact_number: data.2,
            fat_tbl_fat_contact_mincuts: data.3,
        },
    ))
}

fn cutlayer_ext_fat_tbl(input: &str) -> IResult<&str, CutFatExtTbl> {
    let (input, data) = tuple((
        preceded(
            tuple((ws(tag("fatTblExtensionDimension")), ws(tag("=")))),
            positive_number,
        ),
        preceded(
            tuple((ws(tag("fatTblExtensionThreshold")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((ws(tag("fatTblExtensionRangeDimension")), ws(tag("=")))),
            positive_number,
        ),
        preceded(
            tuple((ws(tag("fatTblExtensionRange")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((ws(tag("fatTblExtensionAreaDimension")), ws(tag("=")))),
            positive_number,
        ),
        preceded(
            tuple((ws(tag("fatTblExtensionAreaThreshold")), ws(tag("=")))),
            float_list,
        ),
        preceded(
            tuple((ws(tag("fatTblExtensionContactNumber")), ws(tag("=")))),
            delimited(
                tuple((ws(tag("(0,")), ws(tag("0,")), ws(tag("0,")))),
                number_qlist,
                ws(tag(")")),
            ),
        ),
        preceded(
            tuple((ws(tag("fatTblExtensionMinCuts")), ws(tag("=")))),
            delimited(
                tuple((ws(tag("(1,")), ws(tag("1,")), ws(tag("1,")))),
                number_qlist,
                ws(tag(")")),
            ),
        ),
    ))(input)?;
    Ok((
        input,
        CutFatExtTbl {
            fat_tbl_extension_dimension: data.0,
            fat_tbl_extension_threshold: data.1,
            fat_tbl_extension_range_dimension: data.2,
            fat_tbl_extension_range: data.3,
            fat_tbl_extension_area_dimension: data.4,
            fat_tbl_extension_area_threshold: data.5,
            fat_tbl_extension_contact_number: data.6,
            fat_tbl_extension_mincuts: data.7,
        },
    ))
}

fn cut_layerrule_parser(input: &str) -> IResult<&str, CutLayerRule> {
    let (input, data) = tuple((
        preceded(tuple((ws(tag("pitch")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("defaultWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("minWidth")), ws(tag("=")))), float),
        opt(preceded(
            tuple((ws(tag("sameNetMinSpacing")), ws(tag("=")))),
            float,
        )),
        opt(preceded(
            tuple((ws(tag("cornerMinSpacing")), ws(tag("=")))),
            float,
        )),
        preceded(tuple((ws(tag("minSpacing")), ws(tag("=")))), float),
        preceded(
            tuple((ws(tag("maxCurrDensity")), ws(tag("=")))),
            positive_number,
        ),
        cutlayer_fat_tbl,
        opt(cutlayer_ext_fat_tbl),
    ))(input)?;
    Ok((
        input,
        CutLayerRule {
            pitch: data.0,
            default_width: data.1,
            min_width: data.2,
            min_spacing: data.5,
            corner_minspacing: data.4,
            same_net_minspacing: data.3,
            max_current_density: data.6,
            fat_tbl: data.7,
            fat_ext_tbl: data.8,
        },
    ))
}

fn poly_layerrule_parser(input: &str) -> IResult<&str, PolyLayerRule> {
    let (input, data) = tuple((
        preceded(tuple((ws(tag("pitch")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("defaultWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("minWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("minSpacing")), ws(tag("=")))), float),
    ))(input)?;
    Ok((
        input,
        PolyLayerRule {
            pitch: data.0,
            default_width: data.1,
            min_width: data.2,
            min_spacing: data.3,
        },
    ))
}

fn special_metal_layerrule_parser(input: &str) -> IResult<&str, SpecialMetalLayerRule> {
    let (input, data) = tuple((
        preceded(tuple((ws(tag("pitch")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("defaultWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("minWidth")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("maxSegLenForRC")), ws(tag("=")))), float),
        preceded(tuple((ws(tag("minSpacing")), ws(tag("=")))), float),
    ))(input)?;
    Ok((
        input,
        SpecialMetalLayerRule {
            pitch: data.0,
            default_width: data.1,
            min_width: data.2,
            min_spacing: data.3,
            max_seg_len_for_rc: data.4,
        },
    ))
}

fn special_cut_layerrule_parser(input: &str) -> IResult<&str, SpecialCutLayerRule> {
    let (input, data) = preceded(tuple((ws(tag("minSpacing")), ws(tag("=")))), float)(input)?;
    Ok((input, SpecialCutLayerRule { min_spacing: data }))
}

pub fn layer_parser(input: &str) -> IResult<&str, TfLayer> {
    let (input, (name, data)) = tuple((
        preceded(ws(tag("Layer")), qstring),
        delimited(
            ws(tag("{")),
            permutation((
                preceded(
                    tuple((ws(tag("layerNumber")), ws(tag("=")))),
                    positive_number,
                ), // 0
                preceded(
                    tuple((ws(tag("maskName")), ws(tag("=")))),
                    alt((map(qstring, |x| Some(x)), map(ws(tag("\"\"")), |_| None))),
                ), // 1
                opt(preceded(
                    tuple((ws(tag("isDefaultLayer")), ws(tag("=")))),
                    boolean_number,
                )), // 2
                preceded(tuple((ws(tag("visible")), ws(tag("=")))), boolean_number), // 3
                preceded(tuple((ws(tag("selectable")), ws(tag("=")))), boolean_number), // 4
                preceded(tuple((ws(tag("blink")), ws(tag("=")))), boolean_number),   // 5
                preceded(
                    tuple((ws(tag("color")), ws(tag("=")))),
                    alt((
                        map(qstring, |x| ColorEnum::SelfDef(x.to_string())),
                        map(qnumber, |x| ColorEnum::Builtin(x)),
                    )),
                ), // 6
                preceded(tuple((ws(tag("lineStyle")), ws(tag("=")))), qstring),      // 7
                preceded(tuple((ws(tag("pattern")), ws(tag("=")))), qstring),        // 8
                opt(alt((
                    map(metal_layerrule_parser, |res| LayerRule::Metal(res)),
                    map(cut_layerrule_parser, |res| LayerRule::Cut(res)),
                    map(poly_layerrule_parser, |res| LayerRule::Poly(res)),
                    map(special_metal_layerrule_parser, |res| LayerRule::SMetal(res)),
                    map(special_cut_layerrule_parser, |res| LayerRule::SCut(res)),
                ))),
            )),
            ws(tag("}")),
        ),
    ))(input)?;
    Ok((
        input,
        TfLayer {
            layer_name: name.to_string(),
            layer_id: data.0,
            mask_name: data.1.map(|x| x.to_string()),
            visible: data.3,
            selectable: data.4,
            blink: data.5,
            is_defaultlayer: data.2.map_or(false, |_| true),
            line_style: data.7.to_string(),
            pattern: data.8.to_string(),
            color: data.6,
            layer_rule: data.9, // None mean it's text layer
        },
    ))
}

#[cfg(test)]
mod test {
    use super::*;
    #[test]
    // this testcase intend to test device manufacture/text layer
    fn test_layer1() {
        let input = "Layer      \"NW\" {
        layerNumber         = 14
        maskName            = \"\"
        visible             = 1
        selectable          = 1
        blink               = 0
        color               = \"magenta\"
        lineStyle           = \"dash\"
        pattern             = \"blank\"
        pitch               = 0
        defaultWidth            = 0.33
        minWidth            = 0.33
        minSpacing          = 0.33
}";
        let (_, _) = layer_parser(input).unwrap();
    }

    #[test]
    // this testcase intend to test metal layer
    fn test_layer2() {
        let input = "Layer      \"M2\" {
        layerNumber         = 62
        maskName            = \"metal2\"
        isDefaultLayer          = 1
        visible             = 1
        selectable          = 1
        blink               = 0
        color               = \"yellow\"
        lineStyle           = \"solid\"
        pattern             = \"dot\"
        pitch               = 0.14
        defaultWidth            = 0.07
        minWidth            = 0.07
        minSpacing          = 0.07
        maxWidth            = 4.5
        fatWireThreshold        = 1.501
        fatThinMinSpacing       = 0.300
        fatFatMinSpacing        = 0.300
        fatContactThreshold     = 1
        maxCurrDensity          = 11.0
        unitMinResistance       = 2.502e-04
        unitNomResistance       = 2.78e-04
        unitMaxResistance       = 3.058e-04
        unitMinHeightFromSub        = 0.5499
        unitNomHeightFromSub        = 0.611
        unitMaxHeightFromSub        = 0.6721
        unitMinThickness        = 0.1296
        unitNomThickness        = 0.144
        unitMaxThickness        = 0.1584
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.100,0.120,0.300,
                                                   0.100,0.100,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300)   
        minArea             = 0.0196
        minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.099
                endOfLine2NeighborMinSpacing    = 0.1
                endOfLine2NeighborSideMinSpacing = 0.1
                endOfLine2NeighborCornerKeepoutWidth = 0.031
                endOfLine2NeighborSideKeepoutLength = 0.096
}";
        let (_, _) = layer_parser(input).unwrap();
    }

    #[test]
    // this testcase intend to test cut layer
    fn test_layer3() {
        let input = "Layer      \"V2\" {
        layerNumber         = 71
        maskName            = \"via2\"
        isDefaultLayer          = 1
        visible             = 1
        selectable          = 1
        blink               = 0
        color               = \"blue\"
        lineStyle           = \"solid\"
        pattern             = \"rectangleX\"
        pitch               = 0
        defaultWidth            = 0.07
        minWidth            = 0.07
        sameNetMinSpacing       = 0.07
        cornerMinSpacing        = 0.09
        minSpacing              = 0.1
        maxCurrDensity          = 7000
        fatTblDimension         = 5
        fatTblThreshold         = (0,0.241,0.35,0.521,0.646)
        fatTblFatContactNumber      = (29,29,54,54,54)
        fatTblFatContactMinCuts     = (1,2,2,3,4)
        fatTblExtensionDimension    = 2
        fatTblExtensionThreshold    = (0,0.24)
        fatTblExtensionRangeDimension   = 1
        fatTblExtensionRange        = (1.1)
        fatTblExtensionAreaDimension    = 2
        fatTblExtensionAreaThreshold    = (0,0.0576)
        fatTblExtensionContactNumber    =(0,
                          0,
                          0,
                          \"29,30,32,34,36,37,40,41,46,47,50,52\")
        fatTblExtensionMinCuts      =(1,
                          1,
                          1,
                          \"2,2,2,2,2,2,2,2,2,2,2,2\")
}
";
        let (_, _) = layer_parser(input).unwrap();
    }
}
