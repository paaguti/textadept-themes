-- Chalk theme for Textadept
-- Theme author: Chris Kempson (http://chriskempson.com)
-- Build with Base16 (https://github.com/chriskempson/base16)
-- Repository: https://github.com/rgieseke/ta-themes

local buffer = buffer
local property, property_int = buffer.property, buffer.property_int

property['color.base00'] = 0x151515
property['color.base01'] = 0x202020
property['color.base02'] = 0x303030
property['color.base03'] = 0x505050
property['color.base04'] = 0xb0b0b0
property['color.base05'] = 0xd0d0d0
property['color.base06'] = 0xe0e0e0
property['color.base07'] = 0xf5f5f5
property['color.base08'] = 0xb19ffb
property['color.base09'] = 0x87a9ed
property['color.base0A'] = 0x6fb2dd
property['color.base0B'] = 0x67c2ac
property['color.base0C'] = 0xc0cf12
property['color.base0D'] = 0xefc26f
property['color.base0E'] = 0xeea3e1
property['color.base0F'] = 0x8fafde

-- Default font.
property['font'], property['fontsize'] = 'Bitstream Vera Sans Mono', 10
if WIN32 then
  property['font'] = 'Courier New'
elseif OSX then
  property['font'], property['fontsize'] = 'Monaco', 12
end

-- Token styles.
property['style.nothing'] = ''
property['style.class'] = 'fore:%(color.base0A)'
property['style.comment'] = 'fore:%(color.base04)'
property['style.constant'] = 'fore:%(color.base09)'
property['style.error'] = 'fore:%(color.base08),italics'
property['style.function'] = 'fore:%(color.base0E)'
property['style.keyword'] = 'fore:%(color.base0E)'
property['style.label'] = 'fore:%(color.base0A)'
property['style.number'] = 'fore:%(color.base09)'
property['style.operator'] = 'fore:%(color.base02)'
property['style.regex'] = 'fore:%(color.base0C)'
property['style.string'] = 'fore:%(color.base0B)'
property['style.preprocessor'] = 'fore:%(color.base0A)'
property['style.type'] = 'fore:%(color.base09)'
property['style.variable'] = 'fore:%(color.base08)'
property['style.whitespace'] = ''
property['style.embedded'] = 'fore:%(color.base0F),back:%(color.base06)'
property['style.identifier'] = '%(style.nothing)'

-- Predefined styles.
property['style.default'] = 'font:%(font),size:%(fontsize),'..
                            'fore:%(color.base02),back:%(color.base07)'
property['style.linenumber'] = 'fore:%(color.base05),back:%(color.base07)'
property['style.bracelight'] = 'fore:%(color.base0C),underlined'
property['style.bracebad'] = 'fore:%(color.base08)'
property['style.controlchar'] = '%(style.nothing)'
property['style.indentguide'] = 'fore:%(color.base03)'
property['style.calltip'] = 'fore:%(color.base05),back:%(color.base00)'

-- Multiple Selection and Virtual Space.
--buffer.additional_sel_alpha =
--buffer.additional_sel_fore =
--buffer.additional_sel_back =
--buffer.additional_caret_fore =

-- Caret and Selection Styles.
buffer:set_sel_fore(true, property_int['color.base07'])
buffer:set_sel_back(true, property_int['color.base02'])
--buffer.sel_alpha =
buffer.caret_fore = property_int['color.base00']
buffer.caret_line_back = property_int['color.base06']
--buffer.caret_line_back_alpha =

-- Fold Margin.
buffer:set_fold_margin_colour(true, property_int['color.base07'])
buffer:set_fold_margin_hi_colour(true, property_int['color.base07'])

-- Fold Margin Markers.
local c = _SCINTILLA.constants
buffer.marker_fore[c.SC_MARKNUM_FOLDEROPEN] = property_int['color.base03']
buffer.marker_back[c.SC_MARKNUM_FOLDEROPEN] = property_int['color.base03']
buffer.marker_fore[c.SC_MARKNUM_FOLDER] = property_int['color.base03']
buffer.marker_back[c.SC_MARKNUM_FOLDER] = property_int['color.base03']

-- Long Lines.
buffer.edge_colour = property_int['color.base06']

-- Add red and green for diff lexer.
property['color.red'] = property['color.base08']
property['color.green'] = property['color.base0B']
