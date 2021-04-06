[![Action Status](https://github.com/erihsu/tf_parser/workflows/Rust/badge.svg)](https://github.com/erihsu/tf_parser/actions)
[![Crates.io](https://img.shields.io/crates/v/tf_parser.svg)](https://crates.io/crates/tf_parser)
[![Doc.rs](https://docs.rs/tf_parser/badge.svg)](https://docs.rs/tf_parser)
# tf-parser
Technology file parser in Rust

# Introduction
Technology file is commonly used in modern EDA PR tools to define technology process information including layer, contact, designrule and etc. EDA tool vendor may require foundries to provide this kind of file in different text format in PDK(process design kit).

## EDA parser in Rust
The project is a part of backend EDA parser collection in Rust. We're also developing lef/spef parser in Rust and finally opensource. 

### Similar project
 * [OpenRoad lef parser](https://github.com/The-OpenROAD-Project/lef)
 * [OpenRoad def parser](https://github.com/The-OpenROAD-Project/def)
 * [openTimer spef parser](https://github.com/OpenTimer/Parser-SPEF)

For frontend EDA parser in Rust, you can find [sv-parser](https://github.com/dalance/sv-parser), [sdc-parser](https://github.com/dalance/sdc-parser)

# Technology file specification
Unfortunately, it's very hard to find universal technology file specification. Each EDA vendor define their own technology file format. We follow the .tf text format to develop the parser. 

The .tf generally contains 10 parts: Comment, Technology, Color, Stipple, Tile, Layer, ContactCode, DesignRule, PRRule and DensityRule. We develop each block's subparser and combine them together to parse the whole .tf file

# The parser

The parser is developed based on nom parser combinator framework and currently support parse Synopsys Apollo technology format file. You can try it under example

If you are interested in our work, please contact [xuzhenyutc@icloud.com]

# License

Licensed under either of these:

 * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or
   https://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or
   https://opensource.org/licenses/MIT)
