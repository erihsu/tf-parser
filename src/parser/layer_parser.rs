use super::base_parser::{boolean_number, positive_number, qnumber, qstring, ws};
use crate::model::TfLayerDataType;
use crate::model::TfLayerUISetting;
use nom::bytes::complete::take_until;
use nom::combinator::value;
use nom::{
    branch::{alt, permutation},
    bytes::complete::tag,
    combinator::{map, opt},
    error::context,
    sequence::{delimited, preceded, tuple},
};

use crate::{
    model::{ColorEnum, TfLayer},
    TfRes,
};

// regardless rule temparally
fn layer_rule_parser(input: &str) -> TfRes<&str, ()> {
    value(
        (),
        preceded(
            alt((
                ws(tag("pitch")),
                ws(tag("minSpacing")),
                ws(tag("enclosedCutNumNeighbor")),
            )),
            take_until("}"),
        ),
    )(input)
}

fn layer_basic_parser(input: &str) -> TfRes<&str, (u32, Option<&str>)> {
    tuple((
        preceded(
            tuple((ws(tag("layerNumber")), ws(tag("=")))),
            positive_number,
        ), // 0
        opt(preceded(
            tuple((ws(tag("maskName")), ws(tag("=")))),
            qstring,
        )), // 1
    ))(input)
}

fn layer_ui_parser(input: &str) -> TfRes<&str, TfLayerUISetting> {
    permutation((
        preceded(tuple((ws(tag("visible")), ws(tag("=")))), boolean_number), // 0
        preceded(tuple((ws(tag("selectable")), ws(tag("=")))), boolean_number), // 1
        preceded(tuple((ws(tag("blink")), ws(tag("=")))), boolean_number),   // 2
        preceded(
            tuple((ws(tag("color")), ws(tag("=")))),
            alt((
                map(qstring, |x| ColorEnum::SelfDef(x.to_string())),
                map(qnumber, |x| ColorEnum::Builtin(x)),
            )),
        ), // 3
        preceded(tuple((ws(tag("lineStyle")), ws(tag("=")))), qstring),      // 4
        preceded(tuple((ws(tag("pattern")), ws(tag("=")))), qstring),        // 5
    ))(input)
    .map(|(res, data)| {
        (
            res,
            TfLayerUISetting {
                visible: data.0,
                selectable: data.1,
                blink: data.2,
                line_style: data.4.to_string(),
                pattern: data.5.to_string(),
                color: data.3,
            },
        )
    })
}

pub fn layer_parser(input: &str) -> TfRes<&str, TfLayer> {
    context(
        "Layer Section",
        tuple((
            preceded(ws(tag("Layer")), qstring),
            delimited(
                ws(tag("{")),
                tuple((
                    layer_basic_parser, // 0
                    opt(preceded(
                        tuple((ws(tag("isDefaultLayer")), ws(tag("=")))),
                        boolean_number,
                    )), // 1
                    layer_ui_parser,    // 2
                    opt(layer_rule_parser), // 3
                )),
                ws(tag("}")),
            ),
        )),
    )(input)
    .map(|(res, (name, data))| {
        (
            res,
            TfLayer {
                layer_name: name.to_string(),
                mask_name: (data.0).1.map(|x| x.to_string()), // Text layer and diode layer
                layer_id: (data.0).0,
                layer_ui: data.2,
                is_defaultlayer: data.1.unwrap_or(false),
                layer_rule: None, // None mean it's text layer
            },
        )
    })
}

fn layer_dt_basic_parser(input: &str) -> TfRes<&str, (u32, u32)> {
    permutation((
        preceded(
            tuple((ws(tag("layerNumber")), ws(tag("=")))),
            positive_number,
        ), // 0
        preceded(
            tuple((ws(tag("dataTypeNumber")), ws(tag("=")))),
            positive_number,
        ), // 1
    ))(input)
}

pub fn layer_dt_parser(input: &str) -> TfRes<&str, TfLayerDataType> {
    context(
        "Layer Data Type Section",
        tuple((
            preceded(ws(tag("LayerDataType")), qstring),
            delimited(
                ws(tag("{")),
                tuple((
                    layer_dt_basic_parser,
                    layer_ui_parser, // 2
                )),
                ws(tag("}")),
            ),
        )),
    )(input)
    .map(|(res, (name, data))| {
        (
            res,
            TfLayerDataType {
                name: name.to_string(),
                layer_number: (data.0).0,
                data_type_number: (data.0).1,
                layer_dt_ui: data.1,
            },
        )
    })
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

    #[test]
    fn test_layer4() {
        let input = "Layer \"NW\" {
  layerNumber = 14
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = \"solid\"
  pattern = \"blank\"
  color = \"magenta\"
}";
        let (_, _) = layer_parser(input).unwrap();
    }
}
