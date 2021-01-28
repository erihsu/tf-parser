# tf_parser
Technology file parser in Rust

# Introduction
Technology file is commonly used in modern EDA PR tools to define technology process information including layer, contact, designrule and etc. EDA tool vendor may require foundries to provide this kind of file in different text format in PDK(process design kit).

## Backend EDA in Rust
The project is a part of PR tool(backend) parser collection in Rust. We're developing lef/def/spef parser in Rust and finally opensource. 

### Similar project
 * [OpenRoad lef parser](https://github.com/The-OpenROAD-Project/lef)
 * [OpenRoad def parser](https://github.com/The-OpenROAD-Project/def)
 * [openTimer spef parser](https://github.com/OpenTimer/Parser-SPEF)

## Frontend EDA in Rust
For frontend EDA parser, you can find [sv-parser](https://github.com/dalance/sv-parser), [sdc-parser](https://github.com/dalance/sdc-parser)

# Technology file specification
Unfortunately, it's very hard to find universal technology file specification. Each EDA vendor define their own technology file format. We follow the .tf text format to develop the parser. 

The .tf generally contains 10 parts: Comment, Technology, Color, Stipple, Tile, Layer, ContactCode, DesignRule, PRRule and DensityRule. We develop each block's subparser and combine them together to parse the whole .tf file

# The parser

The parser is developed based on nom parser combinator framework and currently support parse Synopsys Appolo technology format file. You can try it under example

If you are interested in our work, please contact [xuzhenyutc@icloud.com]
