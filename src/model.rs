//! Data structure abstract in Technology file

/// Technology File abstract
pub struct TfData {
    pub basic: TfTechnology,
    pub color: Vec<TfColor>,
    pub stipple: Vec<TfStipple>,
    pub tile: TfTile,
    pub layer: Vec<TfLayer>,
    pub layer_dt: Vec<TfLayerDataType>,
    pub contact: Vec<TfContact>,
    pub designrule: Vec<TfDesignRule>,
    pub prrule: TfPRRule,
    pub densityrule: Vec<TfDensityRule>,
}

// "Technology" Section abstract
#[derive(Debug)]
pub struct TfTechnology {
    pub technology: String,
    pub dielectric: f32,
    pub time_unit: String,
    pub time_precision: u32,
    pub length_unit: String,
    pub length_precision: u32,
    pub voltage_unit: String,
    pub voltage_precision: u32,
    pub current_unit: String,
    pub current_precision: u32,
    pub power_unit: String,
    pub power_precision: u32,
    pub resistance_unit: String,
    pub resistance_precision: u32,
    pub capacitance_unit: String,
    pub capacitance_precision: u32,
    pub inductance_unit: String,
    pub inductance_precision: u32,
    pub grid_resolution: u32,
}
/// "Color" Section abstract
pub struct TfColor {
    pub color_id: u32,
    pub rgb_defined: bool,
    pub red: u8,
    pub green: u8,
    pub blue: u8,
}

/// "Stipple" Section abstract
pub struct TfStipple {
    pub name: String,
    pub width: u32,
    pub height: u32,
    pub pattern: Vec<bool>,
}

/// "Tile" Section abstract
pub struct TfTile {
    pub name: String,
    pub width: f32,
    pub height: f32,
}

pub enum TfLayerEnum {
    Layer(TfLayer),
    DataType(TfLayerDataType),
}

/// "Layer" Section abstract, including cut layer and metal layer
pub struct TfLayer {
    pub layer_name: String,
    pub mask_name: Option<String>, // Text layer and diode layer
    pub layer_id: u32,
    pub visible: bool,
    pub selectable: bool,
    pub blink: bool,
    pub is_defaultlayer: bool,
    pub line_style: String,
    pub pattern: String,
    pub color: ColorEnum,
    pub layer_rule: Option<LayerRule>, // None mean it's text layer
}

/// "LayerDataType" Section abstract
pub struct TfLayerDataType {
    pub name: String,
    pub layer_number: u32,
    pub data_type_number: u32,
    pub visible: bool,
    pub selectable: bool,
    pub blink: bool,
    pub color: ColorEnum,
    pub line_style: String,
    pub pattern: String,
}

pub enum ColorEnum {
    SelfDef(String),
    Builtin(u32),
}

/// "LayerRule" Section abstract, including metal layer, cut layer, poly layer rule
pub enum LayerRule {
    Poly(PolyLayerRule),
    SMetal(SpecialMetalLayerRule),
    SCut(SpecialCutLayerRule),
    Metal(MetalLayerRule),
    Cut(CutLayerRule),
}

pub struct PolyLayerRule {
    pub pitch: f32,
    pub default_width: f32,
    pub min_width: f32,
    pub min_spacing: f32,
}

pub struct EndLine2Neighbor {
    pub line2neighbor_threshold: f32,
    pub line2neighbor_minspacing: f32,
    pub line2neighbor_side_minspacing: f32,
    pub line2neighbor_corner_keepout_width: f32,
    pub line2neighbor_side_keepout_length: f32,
}

pub struct MetalFatTbl {
    pub fat_tbl_dimension: u32,
    pub fat_tbl_threshold: Vec<f32>,
    pub fat_tbl_parallel_length: Vec<f32>,
    pub fat_tbl_spacing: Vec<f32>,
}

pub struct SpecialMetalLayerRule {
    pub pitch: f32,
    pub default_width: f32,
    pub min_width: f32,
    pub min_spacing: f32,
    pub max_seg_len_for_rc: f32,
}

pub struct MetalLayerRule {
    pub pitch: f32,
    pub default_width: f32,
    pub min_width: f32,
    pub min_spacing: f32,
    pub max_width: f32,
    pub fat_wire_threshold: f32,
    pub fat_thin_minspacing: f32,
    pub fat_fat_minspacing: f32,
    pub max_current_density: f32,
    pub unit_resistance: (f32, f32, f32),
    pub unit_thickness: (f32, f32, f32),
    pub height_from_sub: (f32, f32, f32),
    pub fat_tbl: MetalFatTbl,
    pub min_area: f32,
    pub min_enclosed_area: f32,
    pub line2neighbor: Option<EndLine2Neighbor>,
}

pub struct CutFatTble {
    pub fat_tbl_dimension: u32,
    pub fat_tbl_threshold: Vec<f32>,
    pub fat_tbl_fat_contact_number: Vec<u32>,
    pub fat_tbl_fat_contact_mincuts: Vec<u32>,
}

pub struct CutFatExtTbl {
    pub fat_tbl_extension_dimension: u32,
    pub fat_tbl_extension_threshold: Vec<f32>,
    pub fat_tbl_extension_range_dimension: u32,
    pub fat_tbl_extension_range: Vec<f32>,
    pub fat_tbl_extension_area_dimension: u32,
    pub fat_tbl_extension_area_threshold: Vec<f32>,
    pub fat_tbl_extension_contact_number: Vec<u32>,
    pub fat_tbl_extension_mincuts: Vec<u32>,
}

pub struct SpecialCutLayerRule {
    pub min_spacing: f32,
}

pub struct CutLayerRule {
    pub pitch: f32,
    pub default_width: f32,
    pub min_width: f32,
    pub min_spacing: f32,
    pub corner_minspacing: Option<f32>,
    pub same_net_minspacing: Option<f32>,
    pub max_current_density: u32,
    pub fat_tbl: CutFatTble,
    pub fat_ext_tbl: Option<CutFatExtTbl>,
}

/// "ContactCode" Section abstract
pub struct TfContact {
    pub name: String,
    pub contact_id: u32,
    pub layer: (String, String, String), // (cutlayer,lowerlayer,upperlayer)
    pub layer_enc: (f32, f32, f32, f32), // upper, lower
    pub unit_resistance: Option<(f32, f32, f32)>,
    pub cutsize: (f32, f32),
    pub cutspacing: f32,
    pub viafarm_spacing: Option<f32>,
    pub is_defaultcontact: bool,
    pub is_fatcontact: bool,
}

/// "DesignRule" Section abstract, including metal2cut, metal2metal, metal2poly rule
pub struct TfDesignRule {
    pub layer1: String,
    pub layer2: String,
    pub rule_data: TfRule,
}

pub enum TfRule {
    MetalRule(TfMetalRule),
    CutRule(TfCutRule),
    PolyRule(TfPolyRule),
}

pub struct TfMetalRule {
    pub minspacing: f32,
    pub stackable: bool,
}

pub struct TfCutRule {
    pub tblsize: u32,
    pub threshold: f32,
    pub cornerkeepout_width: f32,
    pub sidekeepout_length: f32,
    pub sideminspacing: f32,
    pub minlength: f32,
    pub tbl: Vec<f32>,
    pub spacing_tbl: Vec<f32>,
    pub viaarray_excluded_tbl: Vec<f32>,
    pub wire_minthreshold: f32,
}

pub struct TfPolyRule {
    pub fat_wire_via_enc_tbl_size: u32,
    pub fat_wire_via_enc_width_threshold_tbl: Vec<f32>,
    pub fat_wire_via_enc_parallel_length_threshold_tbl: Vec<f32>,
    pub fat_wire_via_enc_max_spacing_threshold_tbl: Vec<f32>,
    pub fat_wire_via_enclosure_tbl: Vec<f32>,
    pub fat_wire_via_array_excluded_tbl: Vec<u32>,
}

/// "PRRule" Section abstract
pub struct TfPRRule {
    pub rowspacing_toptop: f32,
    pub rowspacing_topbot: Option<f32>,
    pub rowspacing_botbot: f32,
    pub abuttable_toptop: u32,
    pub abuttabletopbot: u32,
    pub abuttablebotbot: u32,
}

/// "DensityRule" Section abstract
pub struct TfDensityRule {
    pub layer: String,
    pub window_size: u32,
    pub min_density: u32,
    pub max_density: u32,
}
