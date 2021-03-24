use super::base_parser::{float, number, positive_number, qstring, ws};
use crate::{model::TfTechnology, TfRes};

use nom::{
    bytes::complete::tag,
    combinator::opt,
    error::context,
    sequence::{delimited, preceded, tuple},
};

fn time_unit_parser(input: &str) -> TfRes<&str, (&str, u32)> {
    tuple((
        preceded(tuple((ws(tag("unitTimeName")), ws(tag("=")))), qstring),
        preceded(
            tuple((ws(tag("timePrecision")), ws(tag("=")))),
            positive_number,
        ),
    ))(input)
}

fn length_unit_parser(input: &str) -> TfRes<&str, (&str, u32)> {
    tuple((
        preceded(tuple((ws(tag("unitLengthName")), ws(tag("=")))), qstring),
        preceded(
            tuple((ws(tag("lengthPrecision")), ws(tag("=")))),
            positive_number,
        ),
    ))(input)
}

fn voltage_unit_parser(input: &str) -> TfRes<&str, (&str, u32)> {
    tuple((
        preceded(tuple((ws(tag("unitVoltageName")), ws(tag("=")))), qstring),
        preceded(
            tuple((ws(tag("voltagePrecision")), ws(tag("=")))),
            positive_number,
        ),
    ))(input)
}

fn current_unit_parser(input: &str) -> TfRes<&str, (&str, u32)> {
    tuple((
        preceded(tuple((ws(tag("unitCurrentName")), ws(tag("=")))), qstring),
        preceded(
            tuple((ws(tag("currentPrecision")), ws(tag("=")))),
            positive_number,
        ),
    ))(input)
}

fn capacitance_unit_parser(input: &str) -> TfRes<&str, (&str, u32)> {
    tuple((
        preceded(
            tuple((ws(tag("unitCapacitanceName")), ws(tag("=")))),
            qstring,
        ),
        preceded(
            tuple((ws(tag("capacitancePrecision")), ws(tag("=")))),
            positive_number,
        ),
    ))(input)
}

fn inductance_unit_parser(input: &str) -> TfRes<&str, (&str, u32)> {
    tuple((
        preceded(
            tuple((ws(tag("unitInductanceName")), ws(tag("=")))),
            qstring,
        ),
        preceded(
            tuple((ws(tag("inductancePrecision")), ws(tag("=")))),
            positive_number,
        ),
    ))(input)
}

fn power_unit_parser(input: &str) -> TfRes<&str, (&str, u32)> {
    tuple((
        preceded(tuple((ws(tag("unitPowerName")), ws(tag("=")))), qstring),
        preceded(
            tuple((ws(tag("powerPrecision")), ws(tag("=")))),
            positive_number,
        ),
    ))(input)
}

fn resistance_unit_parser(input: &str) -> TfRes<&str, (&str, u32)> {
    tuple((
        preceded(
            tuple((ws(tag("unitResistanceName")), ws(tag("=")))),
            qstring,
        ),
        preceded(
            tuple((ws(tag("resistancePrecision")), ws(tag("=")))),
            positive_number,
        ),
    ))(input)
}

fn baseline_temperature_parser(input: &str) -> TfRes<&str, (i32, i32, i32)> {
    tuple((
        preceded(
            tuple((ws(tag("minBaselineTemperature")), ws(tag("=")))),
            number,
        ),
        preceded(
            tuple((ws(tag("nomBaselineTemperature")), ws(tag("=")))),
            number,
        ),
        preceded(
            tuple((ws(tag("maxBaselineTemperature")), ws(tag("=")))),
            number,
        ),
    ))(input)
}

pub fn technology_parser(input: &str) -> TfRes<&str, TfTechnology> {
    context(
        "Technology Section",
        preceded(
            ws(tag("Technology")),
            delimited(
                ws(tag("{")),
                tuple((
                    preceded(tuple((ws(tag("name")), ws(tag("=")))), qstring),
                    // preceded(tuple((ws(tag("dielectric")), ws(tag("=")))), float),
                    time_unit_parser,
                    length_unit_parser,
                    voltage_unit_parser,
                    current_unit_parser,
                    power_unit_parser,
                    resistance_unit_parser,
                    capacitance_unit_parser,
                    inductance_unit_parser,
                    preceded(
                        tuple((ws(tag("gridResolution")), ws(tag("=")))),
                        positive_number,
                    ),
                    preceded(
                        tuple((ws(tag("minEdgeMode")), ws(tag("=")))),
                        positive_number,
                    ),
                    opt(baseline_temperature_parser),
                )),
                ws(tag("}")),
            ),
        ),
    )(input)
    .map(|(res, data)| {
        (
            res,
            TfTechnology {
                technology: data.0.to_string(),
                dielectric: 0.0,
                time_unit: (data.1).0.to_string(),
                time_precision: (data.1).1,
                length_unit: (data.2).0.to_string(),
                length_precision: (data.2).1,
                voltage_unit: (data.3).0.to_string(),
                voltage_precision: (data.3).1,
                current_unit: (data.4).0.to_string(),
                current_precision: (data.4).1,
                power_unit: (data.5).0.to_string(),
                power_precision: (data.5).1,
                resistance_unit: (data.6).0.to_string(),
                resistance_precision: (data.6).1,
                capacitance_unit: (data.7).0.to_string(),
                capacitance_precision: (data.7).1,
                inductance_unit: (data.8).0.to_string(),
                inductance_precision: (data.8).1,
                grid_resolution: data.9,
            },
        )
    })
}

#[cfg(test)]
mod test {
    use super::*;
    #[test]
    fn test_technology1() {
        let input = "Technology {
        name                = \"fake_tech\"
        dielectric          = 4.2e-05
        unitTimeName            = \"ns\"
        timePrecision           = 1000
        unitLengthName          = \"micron\"
        lengthPrecision         = 1000
        gridResolution          = 5
        unitVoltageName         = \"v\"
        voltagePrecision        = 1000000
        unitCurrentName         = \"mA\"
        currentPrecision        = 1000
        unitPowerName           = \"uw\"
        powerPrecision          = 100000000
        unitResistanceName      = \"kohm\"
        resistancePrecision     = 10000000
        unitCapacitanceName     = \"pf\"
        capacitancePrecision        = 10000000
        unitInductanceName      = \"nh\"
        inductancePrecision     = 100
        minBaselineTemperature      = 25
        nomBaselineTemperature      = 25
        maxBaselineTemperature      = 25
}";
        let (_, _) = technology_parser(input).unwrap();
    }

    #[test]
    fn test_technology2() {
        let input = "Technology {
        name                = \"scc40nll_hd\"
        dielectric          = 4.2e-05
        unitTimeName            = \"ns\"
        timePrecision           = 1000
        unitLengthName          = \"micron\"
        lengthPrecision         = 1000
        gridResolution          = 5
        unitVoltageName         = \"v\"
        voltagePrecision        = 1000000
        unitCurrentName         = \"mA\"
        currentPrecision        = 1000
        unitPowerName           = \"uw\"
        powerPrecision          = 100000000
        unitResistanceName      = \"kohm\"
        resistancePrecision     = 10000000
        unitCapacitanceName     = \"pf\"
        capacitancePrecision        = 10000000
        unitInductanceName      = \"nh\"
        inductancePrecision     = 100
        minBaselineTemperature      = 25
        nomBaselineTemperature      = 25
        maxBaselineTemperature      = 25
}";
        let (_, _) = technology_parser(input).unwrap();
    }
}
