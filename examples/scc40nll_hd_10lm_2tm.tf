/*************************************************************************/
/* Date: Oct.08.2012                                                     */
/* Author: Naixia_Chen                                                   */
/* Design Rule version: TD-LO40-DR-2001 3R                               */
/* Spice Model version: TD-LO40-SP-2001v00R                              */  
/* This is  a  Apollo  technology file, which is writed for our testing  */
/* library.                                                              */
/*************************************************************************/

Technology	{
		name				= "scc40nll_hd"
		dielectric			= 4.2e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 1000
		gridResolution			= 5
		unitVoltageName			= "v"
		voltagePrecision		= 1000000
		unitCurrentName			= "mA"
		currentPrecision		= 1000
		unitPowerName			= "uw"
		powerPrecision			= 100000000
		unitResistanceName		= "kohm"
		resistancePrecision		= 10000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 10000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 25
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 25
}

Color		14 {
		name				= "14"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 255
		blueIntensity			= 190
}

Color		19 {
		name				= "19"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 0
		blueIntensity			= 255
}

Color		27 {
		name				= "27"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		42 {
		name				= "42"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 190
}

Color		43 {
		name				= "43"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		47 {
		name				= "47"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 255
		blueIntensity			= 255
}

Color		49 {
		name				= "49"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 0
		blueIntensity			= 100
}

Color		52 {
		name				= "52"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 100
		blueIntensity			= 100
}

Color		56 {
		name				= "56"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 100
		blueIntensity			= 200
}

Color		59 {
		name				= "59"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 175
		blueIntensity			= 255
}

Stipple		"rhidot" {
		width			= 16
		height			= 16
		pattern			= (0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
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
}

Stipple		"cross" {
		width			= 16
		height			= 16
		pattern			= (1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1) 
}

Stipple		"hidot" {
		width			= 16
		height			= 16
		pattern			= (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
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
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1) 
}

Tile		"unit" {
		width				= 0.19
		height				= 1.12
}

Layer		"AA" {
		layerNumber			= 10
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "19"
		lineStyle			= "solid"
		pattern				= "enter"
		pitch				= 0
		defaultWidth			= 0.06
		minWidth			= 0.06
		minSpacing			= 0.08
}

Layer		"NW" {
		layerNumber			= 14
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.33
		minWidth			= 0.33
		minSpacing			= 0.33
}

Layer		"GT" {
		layerNumber			= 30
		maskName			= "poly"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "49"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0.04
		minWidth			= 0.04
		minSpacing			= 0.1
}

Layer		"NLL" {
		layerNumber			= 35
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "52"
		lineStyle			= "dash"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"PLL" {
		layerNumber			= 38
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "56"
		lineStyle			= "dash"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"SN" {
		layerNumber			= 40
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "42"
		lineStyle			= "dash"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0.18
		minWidth			= 0.18
		minSpacing			= 0.18
}

Layer		"SP" {
		layerNumber			= 43
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "14"
		lineStyle			= "dash"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0.18
		minWidth			= 0.18
		minSpacing			= 0.18
}

Layer           "VTPH" {
                layerNumber                     = 46
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "magenta"
                lineStyle                       = "dash"
                pattern                         = "backSlash"
                pitch                           = 0
                defaultWidth                    = 0.18
                minWidth                        = 0.18
                minSpacing                      = 0.18
}

Layer           "VTNH" {
                layerNumber                     = 47
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "white"
                lineStyle                       = "dash"
                pattern                         = "slash"
                pitch                           = 0
                defaultWidth                    = 0.18
                minWidth                        = 0.18
                minSpacing                      = 0.18
}


LayerDataType   "LVP" {
                layerNumber                     = 129
                dataTypeNumber                  = 1
                visible                         = 1
                selectable                      = 1
                blink                           = 1
                color                           = "white"
                lineStyle                       = "dash"
                pattern                         = "slash"
}

LayerDataType   "LVN" {
                layerNumber                     = 129
                dataTypeNumber                  = 2
                visible                         = 1
                selectable                      = 1
                blink                           = 1
                color                           = "green"
                lineStyle                       = "dash"
                pattern                         = "backSlash"
}


Layer		"CT" {
		layerNumber			= 50
		maskName			= "polyCont"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "27"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0.06
		minWidth			= 0.06
		minSpacing			= 0.08
}

Layer		"M1" {
		layerNumber			= 61
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
		maxWidth			= 4.5
		fatWireThreshold		= 1.501
		fatThinMinSpacing		= 0.300
		fatFatMinSpacing		= 0.300
		fatContactThreshold		= 1
		maxCurrDensity			= 9.5
		unitMinResistance		= 2.772e-04
		unitNomResistance		= 3.08e-04
		unitMaxResistance		= 3.388e-04
		unitMinHeightFromSub		= 0.3123
		unitNomHeightFromSub		= 0.347
		unitMaxHeightFromSub		= 0.3817
		unitMinThickness		= 0.1143
		unitNomThickness		= 0.127
		unitMaxThickness		= 0.1397
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.080,0.120,0.300,
                                                   0.080,0.080,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300) 
		minArea				= 0.0196
		minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.089
                endOfLine2NeighborMinSpacing    = 0.08
                endOfLine2NeighborSideMinSpacing = 0.08
                endOfLine2NeighborCornerKeepoutWidth = 0.021
                endOfLine2NeighborSideKeepoutLength = 0.066
}

Layer		"M2" {
		layerNumber			= 62
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
		maxWidth			= 4.5
		fatWireThreshold		= 1.501
		fatThinMinSpacing		= 0.300
		fatFatMinSpacing		= 0.300
		fatContactThreshold		= 1
		maxCurrDensity			= 11.0
		unitMinResistance		= 2.502e-04
		unitNomResistance		= 2.78e-04
		unitMaxResistance		= 3.058e-04
		unitMinHeightFromSub		= 0.5499
		unitNomHeightFromSub		= 0.611
		unitMaxHeightFromSub		= 0.6721
		unitMinThickness		= 0.1296
		unitNomThickness		= 0.144
		unitMaxThickness		= 0.1584
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.100,0.120,0.300,
                                                   0.100,0.100,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300)   
		minArea				= 0.0196
		minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.099
                endOfLine2NeighborMinSpacing    = 0.1
                endOfLine2NeighborSideMinSpacing = 0.1
                endOfLine2NeighborCornerKeepoutWidth = 0.031
                endOfLine2NeighborSideKeepoutLength = 0.096
}

Layer		"M3" {
		layerNumber			= 63
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
		maxWidth			= 4.5
		fatWireThreshold		= 1.501
		fatThinMinSpacing		= 0.300
		fatFatMinSpacing		= 0.300
		fatContactThreshold		= 1
		maxCurrDensity			= 11.0
		unitMinResistance		= 2.502e-04
		unitNomResistance		= 2.78e-04
		unitMaxResistance		= 3.058e-04
		unitMinHeightFromSub		= 0.7875
		unitNomHeightFromSub		= 0.875
		unitMaxHeightFromSub		= 0.9625
		unitMinThickness		= 0.1296
		unitNomThickness		= 0.144
		unitMaxThickness		= 0.1584
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.100,0.120,0.300,
                                                   0.100,0.100,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300)   
		minArea				= 0.0196
		minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.099
                endOfLine2NeighborMinSpacing    = 0.1
                endOfLine2NeighborSideMinSpacing = 0.1
                endOfLine2NeighborCornerKeepoutWidth = 0.031
                endOfLine2NeighborSideKeepoutLength = 0.096
}

Layer		"M4" {
		layerNumber			= 64
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
		maxWidth			= 4.5
		fatWireThreshold		= 1.501
		fatThinMinSpacing		= 0.3
		fatFatMinSpacing		= 0.3
		fatContactThreshold		= 1
		maxCurrDensity			= 11.0
		unitMinResistance		= 2.502e-04
		unitNomResistance		= 2.78e-04
		unitMaxResistance		= 3.058e-04
		unitMinHeightFromSub		= 1.0251
		unitNomHeightFromSub		= 1.139
		unitMaxHeightFromSub		= 1.2529
		unitMinThickness		= 0.1296
		unitNomThickness		= 0.144
		unitMaxThickness		= 0.1584
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.100,0.120,0.300,
                                                   0.100,0.100,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300)  
		minArea				= 0.0196
		minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.099
                endOfLine2NeighborMinSpacing    = 0.1
                endOfLine2NeighborSideMinSpacing = 0.1
                endOfLine2NeighborCornerKeepoutWidth = 0.031
                endOfLine2NeighborSideKeepoutLength = 0.096
}

Layer		"M5" {
		layerNumber			= 65
		maskName			= "metal5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.070
		minWidth			= 0.070
		minSpacing			= 0.070
		maxWidth			= 4.5
		fatWireThreshold		= 1.501
		fatThinMinSpacing		= 0.3
		fatFatMinSpacing		= 0.3
		fatContactThreshold		= 1
		maxCurrDensity			= 11.0
		unitMinResistance		= 2.502e-04
		unitNomResistance		= 2.78e-04
		unitMaxResistance		= 3.058e-04
		unitMinHeightFromSub		= 1.2627
		unitNomHeightFromSub		= 1.403
		unitMaxHeightFromSub		= 1.5433
		unitMinThickness		= 0.1296
		unitNomThickness		= 0.144
		unitMaxThickness		= 0.1584
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.100,0.120,0.300,
                                                   0.100,0.100,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300) 
		minArea				= 0.0196
		minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.099
                endOfLine2NeighborMinSpacing    = 0.1
                endOfLine2NeighborSideMinSpacing = 0.1
                endOfLine2NeighborCornerKeepoutWidth = 0.031
                endOfLine2NeighborSideKeepoutLength = 0.096
}

Layer		"M6" {
		layerNumber			= 66
		maskName			= "metal6"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.070
		minWidth			= 0.070
		minSpacing			= 0.070
		maxWidth			= 4.5
		fatWireThreshold		= 1.501
		fatThinMinSpacing		= 0.3
		fatFatMinSpacing		= 0.3
		fatContactThreshold		= 1
		maxCurrDensity			= 11.0
		unitMinResistance		= 2.502e-04
		unitNomResistance		= 2.78e-04
		unitMaxResistance		= 3.058e-04
        unitMinHeightFromSub		= 1.5003
		unitNomHeightFromSub		= 1.667
		unitMaxHeightFromSub		= 1.8337
                unitMinThickness                = 0.1296
                unitNomThickness                = 0.144
                unitMaxThickness                = 0.1584
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.100,0.120,0.300,
                                                   0.100,0.100,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300) 
		minArea				= 0.0196
		minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.099
                endOfLine2NeighborMinSpacing    = 0.1
                endOfLine2NeighborSideMinSpacing = 0.1
                endOfLine2NeighborCornerKeepoutWidth = 0.031
                endOfLine2NeighborSideKeepoutLength = 0.096
}

Layer		"M7" {
		layerNumber			= 67
		maskName			= "metal7"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.070
		minWidth			= 0.070
		minSpacing			= 0.070
		maxWidth			= 4.5
		fatWireThreshold		= 1.501
		fatThinMinSpacing		= 0.3
		fatFatMinSpacing		= 0.3
		fatContactThreshold		= 1
		maxCurrDensity			= 11.0
                unitMinResistance               = 2.502e-04
                unitNomResistance               = 2.78e-04
                unitMaxResistance               = 3.058e-04
		unitMinHeightFromSub		= 1.7379
		unitNomHeightFromSub		= 1.931
		unitMaxHeightFromSub		= 2.1241
                unitMinThickness                = 0.1296
                unitNomThickness                = 0.144
                unitMaxThickness                = 0.1584
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.100,0.120,0.300,
                                                   0.100,0.100,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300) 
		minArea				= 0.0196
		minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.099
                endOfLine2NeighborMinSpacing    = 0.1
                endOfLine2NeighborSideMinSpacing = 0.1
                endOfLine2NeighborCornerKeepoutWidth = 0.031
                endOfLine2NeighborSideKeepoutLength = 0.096
}

Layer           "M8" {
                layerNumber                     = 68
                maskName                        = "metal8"
                isDefaultLayer                  = 1
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "purple"
                lineStyle                       = "solid"
                pattern                         = "brick"
                pitch                           = 0.14
                defaultWidth                    = 0.070
                minWidth                        = 0.070
                minSpacing                      = 0.070
                maxWidth                        = 4.5
                fatWireThreshold                = 1.501
                fatThinMinSpacing               = 0.3
                fatFatMinSpacing                = 0.3
                fatContactThreshold             = 1
                maxCurrDensity                  = 11.0
                unitMinResistance               = 2.502e-04
                unitNomResistance               = 2.78e-04
                unitMaxResistance               = 3.058e-04
                unitMinHeightFromSub            = 1.9755
                unitNomHeightFromSub            = 2.195
                unitMaxHeightFromSub            = 2.4145
                unitMinThickness                = 0.1296
                unitNomThickness                = 0.144
                unitMaxThickness                = 0.1584
                fatTblDimension                 = 4
                fatTblParallelLength            = (0.000,0.301,0.601,1.501)
                fatTblThreshold                 = (0.000,0.221,0.701,1.501)   
                fatTblSpacing                   = (0.070,0.100,0.120,0.300,
                                                   0.100,0.100,0.140,0.300,
                                                   0.120,0.140,0.140,0.300,  
                                                   0.300,0.300,0.300,0.300)                
                minArea                         = 0.0196
                minEnclosedArea                 = 0.2
                endOfLine2NeighborThreshold     = 0.099
                endOfLine2NeighborMinSpacing    = 0.1
                endOfLine2NeighborSideMinSpacing = 0.1
                endOfLine2NeighborCornerKeepoutWidth = 0.031
                endOfLine2NeighborSideKeepoutLength = 0.096
}

Layer		"TM1" {
		layerNumber			= 120
		maskName			= "metal9"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "purple"
		lineStyle			= "solid"
		pattern				= "brick"
		pitch				= 0.84
		defaultWidth			= 0.4
		minWidth			= 0.4
		minSpacing			= 0.4
		maxWidth			= 12
		fatWireThreshold		= 4.501
		fatThinMinSpacing		= 1.2
		fatFatMinSpacing		= 1.2
		fatContactThreshold		= 2.5
		maxCurrDensity			= 67.0
                unitMinResistance               = 1.98e-05
                unitNomResistance               = 2.2e-05
                unitMaxResistance               = 2.42e-05
		unitMinHeightFromSub		= 3.4245
		unitNomHeightFromSub		= 3.805
		unitMaxHeightFromSub		= 4.1855
		unitMinThickness		= 0.81
		unitNomThickness		= 0.90
		unitMaxThickness		= 0.99
                fatTblDimension                 = 3
                fatTblParallelLength            = (0.000,1.501,1.501)
                fatTblThreshold                 = (0.000,2.001,4.501)
                fatTblSpacing                   = (0.400,0.500,1.200,
                                                   0.500,0.500,1.200,
                                                   1.200,1.200,1.200)
		minArea				= 0.56
		minEnclosedArea			= 0.8
}

Layer		"TM2" {
		layerNumber			= 122
		maskName			= "metal10"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "purple"
		lineStyle			= "solid"
		pattern				= "brick"
		pitch				= 0.84
		defaultWidth			= 0.4
		minWidth			= 0.4
		minSpacing			= 0.4
		maxWidth			= 12
		fatWireThreshold		= 4.501
		fatThinMinSpacing		= 1.2
		fatFatMinSpacing		= 1.2
		fatContactThreshold		= 2.5
		maxCurrDensity			= 67.0
                unitMinResistance               = 1.98e-05
                unitNomResistance               = 2.2e-05
                unitMaxResistance               = 2.42e-05
		unitMinHeightFromSub		= 4.8735
		unitNomHeightFromSub		= 5.415
		unitMaxHeightFromSub		= 5.9565
		unitMinThickness		= 0.81
		unitNomThickness		= 0.90
		unitMaxThickness		= 0.99
                fatTblDimension                 = 3
                fatTblParallelLength            = (0.000,1.501,1.501)
                fatTblThreshold                 = (0.000,2.001,4.501)
                fatTblSpacing                   = (0.400,0.500,1.200,
                                                   0.500,0.500,1.200,
                                                   1.200,1.200,1.200)
		minArea				= 0.56
		minEnclosedArea			= 0.8
}

Layer		"V1" {
		layerNumber			= 70
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		sameNetMinSpacing		= 0.07
		cornerMinSpacing		= 0.09
		minSpacing		        = 0.1
		maxCurrDensity			= 7000
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.241,0.35,0.521,0.646)
		fatTblFatContactNumber		= (2,2,27,27,27)
		fatTblFatContactMinCuts		= (1,2,2,3,4)
		fatTblExtensionDimension 	= 2
		fatTblExtensionThreshold 	= (0,0.24)
		fatTblExtensionRangeDimension 	= 1
		fatTblExtensionRange 		= (1.1)
		fatTblExtensionAreaDimension 	= 2
		fatTblExtensionAreaThreshold 	= (0,0.0576)
		fatTblExtensionContactNumber 	=(0,
						  0,
						  0,
						  "2,3,5,7,9,10,13,14,19,20,23,25")
		fatTblExtensionMinCuts		=(1,
						  1,
						  1,
						  "2,2,2,2,2,2,2,2,2,2,2,2")
}

Layer		"V2" {
		layerNumber			= 71
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		sameNetMinSpacing		= 0.07
		cornerMinSpacing		= 0.09
		minSpacing		        = 0.1
		maxCurrDensity			= 7000
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.241,0.35,0.521,0.646)
		fatTblFatContactNumber		= (29,29,54,54,54)
		fatTblFatContactMinCuts		= (1,2,2,3,4)
		fatTblExtensionDimension 	= 2
		fatTblExtensionThreshold 	= (0,0.24)
		fatTblExtensionRangeDimension 	= 1
		fatTblExtensionRange 		= (1.1)
		fatTblExtensionAreaDimension 	= 2
		fatTblExtensionAreaThreshold 	= (0,0.0576)
		fatTblExtensionContactNumber 	=(0,
						  0,
						  0,
						  "29,30,32,34,36,37,40,41,46,47,50,52")
		fatTblExtensionMinCuts		=(1,
						  1,
						  1,
						  "2,2,2,2,2,2,2,2,2,2,2,2")
}

Layer		"V3" {
		layerNumber			= 72
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		sameNetMinSpacing		= 0.07
		cornerMinSpacing		= 0.09
		minSpacing		        = 0.1
		maxCurrDensity			= 7000
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.241,0.35,0.521,0.646)
		fatTblFatContactNumber		= (56,56,81,81,81)
		fatTblFatContactMinCuts		= (1,2,2,3,4)
		fatTblExtensionDimension 	= 2
		fatTblExtensionThreshold 	= (0,0.24)
		fatTblExtensionRangeDimension 	= 1
		fatTblExtensionRange 		= (1.1)
		fatTblExtensionAreaDimension 	= 2
		fatTblExtensionAreaThreshold 	= (0,0.0576)
		fatTblExtensionContactNumber 	=(0,
						  0,
						  0,
						  "56,57,59,61,63,64,67,68,73,74,77,79")
		fatTblExtensionMinCuts		=(1,
						  1,
						  1,
						  "2,2,2,2,2,2,2,2,2,2,2,2")
}

Layer		"V4" {
		layerNumber			= 73
		maskName			= "via4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		sameNetMinSpacing		= 0.07 
		cornerMinSpacing		= 0.09
                minSpacing		        = 0.1
		maxCurrDensity			= 7000
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.241,0.35,0.521,0.646)
		fatTblFatContactNumber		= (83,83,108,108,108)
		fatTblFatContactMinCuts		= (1,2,2,3,4)
		fatTblExtensionDimension 	= 2
		fatTblExtensionThreshold 	= (0,0.24)
		fatTblExtensionRangeDimension 	= 1
		fatTblExtensionRange 		= (1.1)
		fatTblExtensionAreaDimension 	= 2
		fatTblExtensionAreaThreshold 	= (0,0.0576)
		fatTblExtensionContactNumber 	=(0,
						  0,
						  0,
						  "83,84,86,88,90,91,94,95,100,101,104,106")
		fatTblExtensionMinCuts		=(1,
						  1,
						  1,
						  "2,2,2,2,2,2,2,2,2,2,2,2")
}

Layer		"V5" {
		layerNumber			= 74
		maskName			= "via5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		sameNetMinSpacing		= 0.07
		cornerMinSpacing		= 0.09
		minSpacing		        = 0.1
		maxCurrDensity			= 7000
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.241,0.35,0.521,0.646)
		fatTblFatContactNumber		= (110,110,135,135,135)
		fatTblFatContactMinCuts		= (1,2,2,3,4)
		fatTblExtensionDimension 	= 2
		fatTblExtensionThreshold 	= (0,0.24)
		fatTblExtensionRangeDimension 	= 1
		fatTblExtensionRange 		= (1.1)
		fatTblExtensionAreaDimension 	= 2
		fatTblExtensionAreaThreshold 	= (0,0.0576)
		fatTblExtensionContactNumber 	=(0,
						  0,
						  0,
						  "110,111,113,115,117,118,121,122,127,128,131,133")
		fatTblExtensionMinCuts		=(1,
						  1,
						  1,
						  "2,2,2,2,2,2,2,2,2,2,2,2")
}

Layer		"V6" {
		layerNumber			= 75
		maskName			= "via6"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		sameNetMinSpacing		= 0.07
		cornerMinSpacing		= 0.09
		minSpacing		        = 0.1
		maxCurrDensity			= 7000
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.241,0.35,0.521,0.646)
		fatTblFatContactNumber		= (137,137,162,162,162)
		fatTblFatContactMinCuts		= (1,2,2,3,4)
		fatTblExtensionDimension 	= 2
		fatTblExtensionThreshold 	= (0,0.24)
		fatTblExtensionRangeDimension 	= 1
		fatTblExtensionRange 		= (1.1)
		fatTblExtensionAreaDimension 	= 2
		fatTblExtensionAreaThreshold 	= (0,0.0576)
		fatTblExtensionContactNumber 	=(0,
						  0,
						  0,
						  "137,138,140,142,144,145,148,149,154,155,158,160")
		fatTblExtensionMinCuts		=(1,
						  1,
						  1,
						  "2,2,2,2,2,2,2,2,2,2,2,2")
}

Layer		"V7" {
		layerNumber			= 76
		maskName			= "via7"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		sameNetMinSpacing		= 0.07
		cornerMinSpacing		= 0.09
		minSpacing		        = 0.1
		maxCurrDensity			= 7000
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.241,0.35,0.521,0.646)
		fatTblFatContactNumber		= (164,164,189,189,189)
		fatTblFatContactMinCuts		= (1,2,2,3,4)
		fatTblExtensionDimension 	= 2
		fatTblExtensionThreshold 	= (0,0.24)
		fatTblExtensionRangeDimension 	= 1
		fatTblExtensionRange 		= (1.1)
		fatTblExtensionAreaDimension 	= 2
		fatTblExtensionAreaThreshold 	= (0,0.0576)
		fatTblExtensionContactNumber 	=(0,
						  0,
						  0,
						  "164,165,167,169,171,172,175,176,181,182,185,187")
		fatTblExtensionMinCuts		=(1,
						  1,
						  1,
						  "2,2,2,2,2,2,2,2,2,2,2,2")
}

Layer           "TV1" {
                layerNumber                     = 121
                maskName                        = "via8"
                isDefaultLayer                  = 1
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "47"
                lineStyle                       = "solid"
                pattern                         = "rectangleX"
                pitch                           = 0
                defaultWidth                    = 0.36
                minWidth                        = 0.36
                minSpacing                      = 0.34
                maxCurrDensity                  = 300000
		fatTblDimension			= 2
		fatTblThreshold			= (0,1.76)
		fatTblFatContactNumber		= (191,195)
		fatTblFatContactMinCuts		= (1,2)
}

Layer		"TV2" {
		layerNumber			= 123
		maskName			= "via9"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.36
		minWidth			= 0.36
		minSpacing			= 0.34
		maxCurrDensity			= 300000
		fatTblDimension			= 2
		fatTblThreshold			= (0,1.76)
		fatTblFatContactNumber		= (196,200)
		fatTblFatContactMinCuts		= (1,2)
}

Layer           "PA" {
                layerNumber                     = 80
                maskName                        = "via10"
                isDefaultLayer                  = 1
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "white"
                lineStyle                       = "solid"
                pattern                         = "rectangleX"
                minSpacing                      = 2.0
}

Layer           "ALPA" {
                layerNumber                      = 83
                maskName                         = "metal11"
                isDefaultLayer                   = 1
                visible                          = 1
                selectable                       = 1
                blink                            = 0
                color                            = "white"
                lineStyle                        = "solid"
                pattern                          = "dot"
                pitch                            = 4.0
                defaultWidth                     = 2.0
                minWidth                         = 2.0
                maxSegLenForRC                   = 2000
                minSpacing                       = 2.0
}

Layer		"DIODE" {
		layerNumber			= 138
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer           "PRBOUNDARY" {
                layerNumber                     = 127
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "green"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}
Layer		"TEXT1" {
		layerNumber			= 141
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT2" {
		layerNumber			= 142
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT3" {
		layerNumber			= 143
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT4" {
		layerNumber			= 144
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT5" {
		layerNumber			= 145
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT6" {
		layerNumber			= 146
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT7" {
		layerNumber			= 147
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "purple"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer           "TEXT8" {
                layerNumber                     = 148
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "white"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "TM1TXT" {
                layerNumber                     = 126
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "magenta"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "TM2TXT" {
                layerNumber                     = 11
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "yellow"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}
Layer           "WELTXT" {
                layerNumber                     = 162
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "white"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

Layer           "SUBTXT" {
                layerNumber                     = 161
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "green"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}

LayerDataType   "EXDFM" {
                layerNumber                     = 129
                dataTypeNumber                  = 3
                visible                         = 1
                selectable                      = 1
                blink                           = 1
                color                           = "cyan"
                lineStyle                       = "solid"
                pattern                         = "rectangleX"
}

LayerDataType   "EXLFD" {
                layerNumber                     = 129
                dataTypeNumber                  = 4
                visible                         = 1
                selectable                      = 1
                blink                           = 1
                color                           = "yellow"
                lineStyle                       = "solid"
                pattern                         = "rectangleX"
}

LayerDataType   "HVT" {
                layerNumber                     = 159
                dataTypeNumber                  = 11
                visible                         = 1
                selectable                      = 1
                blink                           = 1
                color                           = "red"
                lineStyle                       = "dash"
                pattern                         = "rectangleX"
}

LayerDataType   "LVT" {
                layerNumber                     = 159
                dataTypeNumber                  = 12
                visible                         = 1
                selectable                      = 1
                blink                           = 1
                color                           = "yellow"
                lineStyle                       = "dash"
                pattern                         = "rectangleX"
}

LayerDataType   "VSIA" {
                layerNumber                     = 63
                dataTypeNumber                  = 63
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "cyan"
                lineStyle                       = "solid"
                pattern                         = "blank"
}

ContactCode	"CONT1" {
		contactCodeNumber		= 1
		cutLayer			= "CT"
		lowerLayer			= "GT"
		upperLayer			= "M1"
		isDefaultContact		= 1
		cutWidth			= 0.06
		cutHeight			= 0.06
		upperLayerEncWidth		= 0.025
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.08
		unitMinResistance		= 0.036
		unitNomResistance		= 0.04
		unitMaxResistance		= 0.044
}

ContactCode	"VIA1AA" {
		contactCodeNumber		= 2
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1AB" {
		contactCodeNumber		= 3
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1AB_alt" {
		contactCodeNumber		= 4
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1AC" {
		contactCodeNumber		= 5
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1AC_alt" {
		contactCodeNumber		= 6
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BA" {
		contactCodeNumber		= 7
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BA_alt" {
		contactCodeNumber		= 8
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BB" {
		contactCodeNumber		= 9
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BB_alt" {
		contactCodeNumber		= 10
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BB_r90" {
		contactCodeNumber		= 11
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BB_alt_r90" {
		contactCodeNumber		= 12
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BC" {
		contactCodeNumber		= 13
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BC_alt" {
		contactCodeNumber		= 14
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BC_r90" {
		contactCodeNumber		= 15
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1BC_alt_r90" {
		contactCodeNumber		= 16
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CA" {
		contactCodeNumber		= 17
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CA_alt" {
		contactCodeNumber		= 18
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CB" {
		contactCodeNumber		= 19
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CB_alt" {
		contactCodeNumber		= 20
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CB_r90" {
		contactCodeNumber		= 21
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CB_alt_r90" {
		contactCodeNumber		= 22
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CC" {
		contactCodeNumber		= 23
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CC_alt" {
		contactCodeNumber		= 24
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CC_r90" {
		contactCodeNumber		= 25
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1CC_alt_r90" {
		contactCodeNumber		= 26
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA1F" {
		contactCodeNumber		= 27
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.09
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode     "VIA1_farm" {
                contactCodeNumber               = 28
		isFatContact			= 1
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
                cutWidth                        = 0.07
                cutHeight                       = 0.07
                minCutSpacing                   = 0.09
                viaFarmSpacing                  = 0.1
}

ContactCode	"VIA2AA" {
		contactCodeNumber		= 29
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2AB" {
		contactCodeNumber		= 30
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2AB_alt" {
		contactCodeNumber		= 31
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2AC" {
		contactCodeNumber		= 32
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2AC_alt" {
		contactCodeNumber		= 33
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BA" {
		contactCodeNumber		= 34
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BA_alt" {
		contactCodeNumber		= 35
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BB" {
		contactCodeNumber		= 36
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BB_alt" {
		contactCodeNumber		= 37
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BB_r90" {
		contactCodeNumber		= 38
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BB_alt_r90" {
		contactCodeNumber		= 39
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BC" {
		contactCodeNumber		= 40
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BC_alt" {
		contactCodeNumber		= 41
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BC_r90" {
		contactCodeNumber		= 42
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2BC_alt_r90" {
		contactCodeNumber		= 43
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CA" {
		contactCodeNumber		= 44
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CA_alt" {
		contactCodeNumber		= 45
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CB" {
		contactCodeNumber		= 46
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CB_alt" {
		contactCodeNumber		= 47
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CB_r90" {
		contactCodeNumber		= 48
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CB_alt_r90" {
		contactCodeNumber		= 49
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CC" {
		contactCodeNumber		= 50
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CC_alt" {
		contactCodeNumber		= 51
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CC_r90" {
		contactCodeNumber		= 52
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2CC_alt_r90" {
		contactCodeNumber		= 53
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA2F" {
		contactCodeNumber		= 54
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.09
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode     "VIA2_farm" {
                contactCodeNumber               = 55
		isFatContact			= 1
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
                cutWidth                        = 0.07
                cutHeight                       = 0.07
                minCutSpacing                   = 0.09
                viaFarmSpacing                  = 0.1 
}

ContactCode	"VIA3AA" {
		contactCodeNumber		= 56
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3AB" {
		contactCodeNumber		= 57
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3AB_alt" {
		contactCodeNumber		= 58
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3AC" {
		contactCodeNumber		= 59
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3AC_alt" {
		contactCodeNumber		= 60
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BA" {
		contactCodeNumber		= 61
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BA_alt" {
		contactCodeNumber		= 62
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BB" {
		contactCodeNumber		= 63
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BB_alt" {
		contactCodeNumber		= 64
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BB_r90" {
		contactCodeNumber		= 65
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BB_alt_r90" {
		contactCodeNumber		= 66
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BC" {
		contactCodeNumber		= 67
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BC_alt" {
		contactCodeNumber		= 68
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BC_r90" {
		contactCodeNumber		= 69
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3BC_alt_r90" {
		contactCodeNumber		= 70
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CA" {
		contactCodeNumber		= 71
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CA_alt" {
		contactCodeNumber		= 72
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CB" {
		contactCodeNumber		= 73
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CB_alt" {
		contactCodeNumber		= 74
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CB_r90" {
		contactCodeNumber		= 75
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CB_alt_r90" {
		contactCodeNumber		= 76
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CC" {
		contactCodeNumber		= 77
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CC_alt" {
		contactCodeNumber		= 78
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CC_r90" {
		contactCodeNumber		= 79
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3CC_alt_r90" {
		contactCodeNumber		= 80
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA3F" {
		contactCodeNumber		= 81
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.09
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode     "VIA3_farm" {
                contactCodeNumber               = 82
		isFatContact			= 1
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
                cutWidth                        = 0.07
                cutHeight                       = 0.07
                minCutSpacing                   = 0.09
                viaFarmSpacing                  = 0.1
}

ContactCode	"VIA4AA" {
		contactCodeNumber		= 83
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4AB" {
		contactCodeNumber		= 84
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4AB_alt" {
		contactCodeNumber		= 85
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4AC" {
		contactCodeNumber		= 86
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4AC_alt" {
		contactCodeNumber		= 87
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BA" {
		contactCodeNumber		= 88
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BA_alt" {
		contactCodeNumber		= 89
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BB" {
		contactCodeNumber		= 90
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BB_alt" {
		contactCodeNumber		= 91
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BB_r90" {
		contactCodeNumber		= 92
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BB_alt_r90" {
		contactCodeNumber		= 93
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BC" {
		contactCodeNumber		= 94
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BC_alt" {
		contactCodeNumber		= 95
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BC_r90" {
		contactCodeNumber		= 96
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4BC_alt_r90" {
		contactCodeNumber		= 97
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CA" {
		contactCodeNumber		= 98
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CA_alt" {
		contactCodeNumber		= 99
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CB" {
		contactCodeNumber		= 100
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CB_alt" {
		contactCodeNumber		= 101
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CB_r90" {
		contactCodeNumber		= 102
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CB_alt_r90" {
		contactCodeNumber		= 103
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CC" {
		contactCodeNumber		= 104
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CC_alt" {
		contactCodeNumber		= 105
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CC_r90" {
		contactCodeNumber		= 106
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4CC_alt_r90" {
		contactCodeNumber		= 107
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA4F" {
		contactCodeNumber		= 108
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.09
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode     "VIA4_farm" {
                contactCodeNumber               = 109
		isFatContact			= 1
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
                cutWidth                        = 0.07
                cutHeight                       = 0.07
                minCutSpacing                   = 0.09
                viaFarmSpacing                  = 0.1
}

ContactCode	"VIA5AA" {
		contactCodeNumber		= 110
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5AB" {
		contactCodeNumber		= 111
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5AB_alt" {
		contactCodeNumber		= 112
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5AC" {
		contactCodeNumber		= 113
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5AC_alt" {
		contactCodeNumber		= 114
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BA" {
		contactCodeNumber		= 115
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BA_alt" {
		contactCodeNumber		= 116
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BB" {
		contactCodeNumber		= 117
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BB_alt" {
		contactCodeNumber		= 118
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BB_r90" {
		contactCodeNumber		= 119
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BB_alt_r90" {
		contactCodeNumber		= 120
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BC" {
		contactCodeNumber		= 121
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BC_alt" {
		contactCodeNumber		= 122
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BC_r90" {
		contactCodeNumber		= 123
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5BC_alt_r90" {
		contactCodeNumber		= 124
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CA" {
		contactCodeNumber		= 125
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CA_alt" {
		contactCodeNumber		= 126
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CB" {
		contactCodeNumber		= 127
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CB_alt" {
		contactCodeNumber		= 128
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CB_r90" {
		contactCodeNumber		= 129
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CB_alt_r90" {
		contactCodeNumber		= 130
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CC" {
		contactCodeNumber		= 131
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CC_alt" {
		contactCodeNumber		= 132
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CC_r90" {
		contactCodeNumber		= 133
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5CC_alt_r90" {
		contactCodeNumber		= 134
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA5F" {
		contactCodeNumber		= 135
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.09
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode     "VIA5_farm" {
                contactCodeNumber               = 136
		isFatContact			= 1
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
                cutWidth                        = 0.07
                cutHeight                       = 0.07
                minCutSpacing                   = 0.09
                viaFarmSpacing                  = 0.1
}

ContactCode	"VIA6AA" {
		contactCodeNumber		= 137
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6AB" {
		contactCodeNumber		= 138
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6AB_alt" {
		contactCodeNumber		= 139
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6AC" {
		contactCodeNumber		= 140
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6AC_alt" {
		contactCodeNumber		= 141
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BA" {
		contactCodeNumber		= 142
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BA_alt" {
		contactCodeNumber		= 143
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BB" {
		contactCodeNumber		= 144
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BB_alt" {
		contactCodeNumber		= 145
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BB_r90" {
		contactCodeNumber		= 146
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BB_alt_r90" {
		contactCodeNumber		= 147
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BC" {
		contactCodeNumber		= 148
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BC_alt" {
		contactCodeNumber		= 149
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BC_r90" {
		contactCodeNumber		= 150
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6BC_alt_r90" {
		contactCodeNumber		= 151
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CA" {
		contactCodeNumber		= 152
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CA_alt" {
		contactCodeNumber		= 153
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CB" {
		contactCodeNumber		= 154
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CB_alt" {
		contactCodeNumber		= 155
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CB_r90" {
		contactCodeNumber		= 156
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CB_alt_r90" {
		contactCodeNumber		= 157
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CC" {
		contactCodeNumber		= 158
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CC_alt" {
		contactCodeNumber		= 159
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CC_r90" {
		contactCodeNumber		= 160
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6CC_alt_r90" {
		contactCodeNumber		= 161
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA6F" {
		contactCodeNumber		= 162
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.09
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode     "VIA6_farm" {
                contactCodeNumber               = 163
		isFatContact			= 1
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
                cutWidth                        = 0.07
                cutHeight                       = 0.07
                minCutSpacing                   = 0.09
                viaFarmSpacing                  = 0.1
}

ContactCode	"VIA7AA" {
		contactCodeNumber		= 164
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7AB" {
		contactCodeNumber		= 165
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7AB_alt" {
		contactCodeNumber		= 166
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7AC" {
		contactCodeNumber		= 167
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7AC_alt" {
		contactCodeNumber		= 168
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.015
		lowerLayerEncHeight		= 0.015
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BA" {
		contactCodeNumber		= 169
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BA_alt" {
		contactCodeNumber		= 170
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BB" {
		contactCodeNumber		= 171
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BB_alt" {
		contactCodeNumber		= 172
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BB_r90" {
		contactCodeNumber		= 173
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BB_alt_r90" {
		contactCodeNumber		= 174
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BC" {
		contactCodeNumber		= 175
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BC_alt" {
		contactCodeNumber		= 176
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BC_r90" {
		contactCodeNumber		= 177
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7BC_alt_r90" {
		contactCodeNumber		= 178
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CA" {
		contactCodeNumber		= 179
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CA_alt" {
		contactCodeNumber		= 180
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.015
		upperLayerEncHeight		= 0.015
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CB" {
		contactCodeNumber		= 181
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CB_alt" {
		contactCodeNumber		= 182
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CB_r90" {
		contactCodeNumber		= 183
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CB_alt_r90" {
		contactCodeNumber		= 184
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CC" {
		contactCodeNumber		= 185
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CC_alt" {
		contactCodeNumber		= 186
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.00
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CC_r90" {
		contactCodeNumber		= 187
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.00
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7CC_alt_r90" {
		contactCodeNumber		= 188
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.00
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.00
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.07
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode	"VIA7F" {
		contactCodeNumber		= 189
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.09
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
}

ContactCode     "VIA7_farm" {
                contactCodeNumber               = 190
		isFatContact			= 1
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.03
		unitMinResistance		= 0.00603
		unitNomResistance		= 0.0067
		unitMaxResistance		= 0.00737
                cutWidth                        = 0.07
                cutHeight                       = 0.07
                minCutSpacing                   = 0.09
                viaFarmSpacing                  = 0.1
}

ContactCode	"VIA8" {
		contactCodeNumber		= 191
		cutLayer			= "TV1"
		lowerLayer			= "M8"
		upperLayer			= "TM1"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.34
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}

ContactCode	"VIA8_alt" {
		contactCodeNumber		= 192
		cutLayer			= "TV1"
		lowerLayer			= "M8"
		upperLayer			= "TM1"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.34
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}


ContactCode	"VIA8_r90" {
		contactCodeNumber		= 193
		cutLayer			= "TV1"
		lowerLayer			= "M8"
		upperLayer			= "TM1"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.34
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}

ContactCode	"VIA8_alt_r90" {
		contactCodeNumber		= 194
		cutLayer			= "TV1"
		lowerLayer			= "M8"
		upperLayer			= "TM1"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.34
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}

ContactCode	"VIA8F" {
		contactCodeNumber		= 195
		cutLayer			= "TV1"
		lowerLayer			= "M8"
		upperLayer			= "TM1"
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.5
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}

ContactCode	"VIA9" {
		contactCodeNumber		= 196
		cutLayer			= "TV2"
		lowerLayer			= "TM1"
		upperLayer			= "TM2"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.34
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}

ContactCode	"VIA9_alt" {
		contactCodeNumber		= 197
		cutLayer			= "TV2"
		lowerLayer			= "TM1"
		upperLayer			= "TM2"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.34
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}


ContactCode	"VIA9_r90" {
		contactCodeNumber		= 198
		cutLayer			= "TV2"
		lowerLayer			= "TM1"
		upperLayer			= "TM2"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.34
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}

ContactCode	"VIA9_alt_r90" {
		contactCodeNumber		= 199
		cutLayer			= "TV2"
		lowerLayer			= "TM1"
		upperLayer			= "TM2"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.34
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}

ContactCode	"VIA9F" {
		contactCodeNumber		= 200
		cutLayer			= "TV2"
		lowerLayer			= "TM1"
		upperLayer			= "TM2"
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.5
		unitMinResistance		= 0.00027
		unitNomResistance		= 0.0003
		unitMaxResistance		= 0.00033
}

ContactCode     "VIA10F" {
                contactCodeNumber               = 201
                cutLayer                        = "PA"
                lowerLayer                      = "TM2"
                upperLayer                      = "ALPA"
                cutWidth                        = 2.0
                cutHeight                       = 2.0
                upperLayerEncWidth              = 0.5
                upperLayerEncHeight             = 0.5
                lowerLayerEncWidth              = 0.5
                lowerLayerEncHeight             = 0.5
                minCutSpacing                   = 2.0
}

DesignRule	{
		layer1				= "V2"
		layer2				= "V1"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "V3"
		layer2				= "V2"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "V4"
		layer2				= "V3"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "V5"
		layer2				= "V4"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "V6"
		layer2				= "V5"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "V7"
		layer2				= "V6"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "TV1"
		layer2				= "V7"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "TV2"
		layer2				= "TV1"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "via1Blockage"
		layer2				= "V1"
		minSpacing			= 0.1
}

DesignRule	{
		layer1				= "via2Blockage"
		layer2				= "V2"
		minSpacing			= 0.1
}

DesignRule	{
		layer1				= "via3Blockage"
		layer2				= "V3"
		minSpacing			= 0.1
}

DesignRule	{
		layer1				= "via4Blockage"
		layer2				= "V4"
		minSpacing			= 0.1
}

DesignRule	{
		layer1				= "via5Blockage"
		layer2				= "V5"
		minSpacing			= 0.1
}

DesignRule	{
		layer1				= "via6Blockage"
		layer2				= "V6"
		minSpacing			= 0.1
}

DesignRule	{
		layer1				= "via7Blockage"
		layer2				= "V7"
		minSpacing			= 0.1
}

DesignRule	{
		layer1				= "via8Blockage"
		layer2				= "TV1"
		minSpacing			= 0.5
}

DesignRule	{
		layer1				= "via9Blockage"
		layer2				= "TV2"
		minSpacing			= 0.5
}

DesignRule      {
                layer1                          = "via10Blockage"
                layer2                          = "PA"
                minSpacing                      = 2.0
}

DesignRule 	{
		layer1 = "M1"
		layer2 = "CT"
		fatWireViaEncTblSize = 1
		fatWireViaEncWidthThresholdTbl = (  0.121  )
		fatWireViaEncParallelLengthThresholdTbl = (  0.27  )
		fatWireViaEncMaxSpacingThresholdTbl = (  0.081  )
		fatWireViaEnclosureTbl = (  0.015  )
		fatWireViaArrayExcludedTbl = (1)
}

DesignRule 	{
		layer1 = "M2"
		layer2 = "V1"
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
}       	
DesignRule 	{
		layer1 = "M3"
		layer2 = "V2"
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
}       	       	
DesignRule 	{
		layer1 = "M4"
		layer2 = "V3"
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
}
DesignRule 	{
		layer1 = "M5"
		layer2 = "V4"
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
}

DesignRule 	{
		layer1 = "M6"
		layer2 = "V5"
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
}
DesignRule 	{
		layer1 = "M7"
		layer2 = "V6"
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
}
DesignRule 	{
		layer1 = "M8"
		layer2 = "V7"
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
}

PRRule		{
		rowSpacingTopTop		= 0
		rowSpacingBotBot		= 0
		abuttableTopTop			= 1
		abuttableTopBot			= 0
		abuttableBotBot			= 1
}

DensityRule	{
		layer				= "M1"
                windowSize                      = 110
		minDensity			= 10
		maxDensity			= 85
}

DensityRule	{
		layer				= "M2"
                windowSize                      = 110
		minDensity			= 10
		maxDensity			= 85
}

DensityRule	{
		layer				= "M3"
                windowSize                      = 110
		minDensity			= 10
		maxDensity			= 85
}

DensityRule	{
		layer				= "M4"
                windowSize                      = 110
		minDensity			= 10
		maxDensity			= 85
}

DensityRule	{
		layer				= "M5"
                windowSize                      = 110
		minDensity			= 10
		maxDensity			= 85
}

DensityRule	{
		layer				= "M6"
                windowSize                      = 110
		minDensity			= 10
		maxDensity			= 85
}

DensityRule	{
		layer				= "M7"
                windowSize                      = 110
		minDensity			= 10
		maxDensity			= 85
}

DensityRule	{
		layer				= "M8"
                windowSize                      = 110
		minDensity			= 10
		maxDensity			= 85
}

DensityRule	{
		layer				= "TM1"
                windowSize                      = 200
		minDensity			= 20
		maxDensity			= 85
}

DensityRule	{
		layer				= "TM2"
                windowSize                      = 200
		minDensity			= 20
		maxDensity			= 85
}
