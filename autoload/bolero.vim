" vim:foldmethod=expr:foldlevel=0:foldexpr=MDFold(v\:lnum):foldtext=FoldText()

" # File Info
"
" Tips to navigate this file
" -----------------------------------------------------------------------------

" ----------+-----------------------------------
" Command   |  Description
" ----------+-----------------------------------
"  zo       | Open fold under cursor
"  zc       | Close fold under cursor
"  zR       | Open all folds
"  zM       | Close all folds
"  :help zo | More help


" # Material CMap

let s:MaterialCMap = {
      \"Red 50": ["#FFEBEE", 255],
      \"Red 100": ["#FFCDD2", 224],
      \"Red 200": ["#EF9A9A", 210],
      \"Red 300": ["#E57373", 174],
      \"Red 400": ["#EF5350", 203],
      \"Red 500": ["#F44336", 203],
      \"Red 600": ["#E53935", 167],
      \"Red 700": ["#D32F2F", 160],
      \"Red 800": ["#C62828", 160],
      \"Red 900": ["#B71C1C", 124],
      \"Red A100": ["#FF8A80", 210],
      \"Red A200": ["#FF5252", 203],
      \"Red A400": ["#FF1744", 197],
      \"Red A700": ["#D50000", 160],
      \"Pink 50": ["#FCE4EC", 255],
      \"Pink 100": ["#F8BBD0", 218],
      \"Pink 200": ["#F48FB1", 211],
      \"Pink 300": ["#F06292", 204],
      \"Pink 400": ["#EC407A", 204],
      \"Pink 500": ["#E91E63", 161],
      \"Pink 600": ["#D81B60", 161],
      \"Pink 700": ["#C2185B", 125],
      \"Pink 800": ["#AD1457", 125],
      \"Pink 900": ["#880E4F", 89],
      \"Pink A100": ["#FF80AB", 211],
      \"Pink A200": ["#FF4081", 204],
      \"Pink A400": ["#F50057", 197],
      \"Pink A700": ["#C51162", 161],
      \"Purple 50": ["#F3E5F5", 255],
      \"Purple 100": ["#E1BEE7", 182],
      \"Purple 200": ["#CE93D8", 176],
      \"Purple 300": ["#BA68C8", 134],
      \"Purple 400": ["#AB47BC", 133],
      \"Purple 500": ["#9C27B0", 127],
      \"Purple 600": ["#8E24AA", 91],
      \"Purple 700": ["#7B1FA2", 91],
      \"Purple 800": ["#6A1B9A", 54],
      \"Purple 900": ["#4A148C", 54],
      \"Purple A100": ["#EA80FC", 177],
      \"Purple A200": ["#E040FB", 171],
      \"Purple A400": ["#D500F9", 165],
      \"Purple A700": ["#AA00FF", 129],
      \"Deep Purple 50": ["#EDE7F6", 255],
      \"Deep Purple 100": ["#D1C4E9", 188],
      \"Deep Purple 200": ["#B39DDB", 146],
      \"Deep Purple 300": ["#9575CD", 104],
      \"Deep Purple 400": ["#7E57C2", 97],
      \"Deep Purple 500": ["#673AB7", 61],
      \"Deep Purple 600": ["#5E35B1", 61],
      \"Deep Purple 700": ["#512DA8", 55],
      \"Deep Purple 800": ["#4527A0", 55],
      \"Deep Purple 900": ["#311B92", 54],
      \"Deep Purple A100": ["#B388FF", 141],
      \"Deep Purple A200": ["#7C4DFF", 99],
      \"Deep Purple A400": ["#651FFF", 57],
      \"Deep Purple A700": ["#6200EA", 56],
      \"Indigo 50": ["#E8EAF6", 255],
      \"Indigo 100": ["#C5CAE9", 252],
      \"Indigo 200": ["#9FA8DA", 146],
      \"Indigo 300": ["#7986CB", 104],
      \"Indigo 400": ["#5C6BC0", 61],
      \"Indigo 500": ["#3F51B5", 61],
      \"Indigo 600": ["#3949AB", 61],
      \"Indigo 700": ["#303F9F", 61],
      \"Indigo 800": ["#283593", 24],
      \"Indigo 900": ["#1A237E", 4],
      \"Indigo A100": ["#8C9EFF", 111],
      \"Indigo A200": ["#536DFE", 63],
      \"Indigo A400": ["#3D5AFE", 63],
      \"Indigo A700": ["#304FFE", 63],
      \"Blue 50": ["#E3F2FD", 195],
      \"Blue 100": ["#BBDEFB", 153],
      \"Blue 200": ["#90CAF9", 117],
      \"Blue 300": ["#64B5F6", 75],
      \"Blue 400": ["#42A5F5", 75],
      \"Blue 500": ["#2196F3", 33],
      \"Blue 600": ["#1E88E5", 32],
      \"Blue 700": ["#1976D2", 32],
      \"Blue 800": ["#1565C0", 25],
      \"Blue 900": ["#0D47A1", 25],
      \"Blue A100": ["#82B1FF", 111],
      \"Blue A200": ["#448AFF", 69],
      \"Blue A400": ["#2979FF", 33],
      \"Blue A700": ["#2962FF", 27],
      \"Light Blue 50": ["#E1F5FE", 195],
      \"Light Blue 100": ["#B3E5FC", 153],
      \"Light Blue 200": ["#81D4FA", 117],
      \"Light Blue 300": ["#4FC3F7", 81],
      \"Light Blue 400": ["#29B6F6", 39],
      \"Light Blue 500": ["#03A9F4", 39],
      \"Light Blue 600": ["#039BE5", 38],
      \"Light Blue 700": ["#0288D1", 32],
      \"Light Blue 800": ["#0277BD", 31],
      \"Light Blue 900": ["#01579B", 25],
      \"Light Blue A100": ["#80D8FF", 117],
      \"Light Blue A200": ["#40C4FF", 81],
      \"Light Blue A400": ["#00B0FF", 39],
      \"Light Blue A700": ["#0091EA", 32],
      \"Cyan 50": ["#E0F7FA", 195],
      \"Cyan 100": ["#B2EBF2", 159],
      \"Cyan 200": ["#80DEEA", 116],
      \"Cyan 300": ["#4DD0E1", 80],
      \"Cyan 400": ["#26C6DA", 44],
      \"Cyan 500": ["#00BCD4", 38],
      \"Cyan 600": ["#00ACC1", 37],
      \"Cyan 700": ["#0097A7", 31],
      \"Cyan 800": ["#00838F", 30],
      \"Cyan 900": ["#006064", 23],
      \"Cyan A100": ["#84FFFF", 123],
      \"Cyan A200": ["#18FFFF", 51],
      \"Cyan A400": ["#00E5FF", 45],
      \"Cyan A700": ["#00B8D4", 38],
      \"Teal 50": ["#E0F2F1", 255],
      \"Teal 100": ["#B2DFDB", 152],
      \"Teal 200": ["#80CBC4", 116],
      \"Teal 300": ["#4DB6AC", 73],
      \"Teal 400": ["#26A69A", 36],
      \"Teal 500": ["#009688", 30],
      \"Teal 600": ["#00897B", 6],
      \"Teal 700": ["#00796B", 29],
      \"Teal 800": ["#00695C", 23],
      \"Teal 900": ["#004D40", 23],
      \"Teal A100": ["#A7FFEB", 159],
      \"Teal A200": ["#64FFDA", 86],
      \"Teal A400": ["#1DE9B6", 43],
      \"Teal A700": ["#00BFA5", 37],
      \"Green 50": ["#E8F5E9", 255],
      \"Green 100": ["#C8E6C9", 252],
      \"Green 200": ["#A5D6A7", 151],
      \"Green 300": ["#81C784", 114],
      \"Green 400": ["#66BB6A", 71],
      \"Green 500": ["#4CAF50", 71],
      \"Green 600": ["#43A047", 71],
      \"Green 700": ["#388E3C", 65],
      \"Green 800": ["#2E7D32", 239],
      \"Green 900": ["#1B5E20", 22],
      \"Green A100": ["#B9F6CA", 158],
      \"Green A200": ["#69F0AE", 85],
      \"Green A400": ["#00E676", 42],
      \"Green A700": ["#00C853", 41],
      \"Light Green 50": ["#F1F8E9", 255],
      \"Light Green 100": ["#DCEDC8", 194],
      \"Light Green 200": ["#C5E1A5", 187],
      \"Light Green 300": ["#AED581", 150],
      \"Light Green 400": ["#9CCC65", 149],
      \"Light Green 500": ["#8BC34A", 113],
      \"Light Green 600": ["#7CB342", 107],
      \"Light Green 700": ["#689F38", 71],
      \"Light Green 800": ["#558B2F", 64],
      \"Light Green 900": ["#33691E", 58],
      \"Light Green A100": ["#CCFF90", 192],
      \"Light Green A200": ["#B2FF59", 155],
      \"Light Green A400": ["#76FF03", 118],
      \"Light Green A700": ["#64DD17", 76],
      \"Lime 50": ["#F9FBE7", 230],
      \"Lime 100": ["#F0F4C3", 230],
      \"Lime 200": ["#E6EE9C", 193],
      \"Lime 300": ["#DCE775", 186],
      \"Lime 400": ["#D4E157", 185],
      \"Lime 500": ["#CDDC39", 185],
      \"Lime 600": ["#C0CA33", 149],
      \"Lime 700": ["#AFB42B", 142],
      \"Lime 800": ["#9E9D24", 142],
      \"Lime 900": ["#827717", 3],
      \"Lime A100": ["#F4FF81", 228],
      \"Lime A200": ["#EEFF41", 227],
      \"Lime A400": ["#C6FF00", 190],
      \"Lime A700": ["#AEEA00", 148],
      \"Yellow 50": ["#FFFDE7", 230],
      \"Yellow 100": ["#FFF9C4", 230],
      \"Yellow 200": ["#FFF59D", 229],
      \"Yellow 300": ["#FFF176", 228],
      \"Yellow 400": ["#FFEE58", 227],
      \"Yellow 500": ["#FFEB3B", 227],
      \"Yellow 600": ["#FDD835", 221],
      \"Yellow 700": ["#FBC02D", 214],
      \"Yellow 800": ["#F9A825", 214],
      \"Yellow 900": ["#F57F17", 208],
      \"Yellow A100": ["#FFFF8D", 228],
      \"Yellow A200": ["#FFFF00", 226],
      \"Yellow A400": ["#FFEA00", 220],
      \"Yellow A700": ["#FFD600", 220],
      \"Amber 50": ["#FFF8E1", 230],
      \"Amber 100": ["#FFECB3", 229],
      \"Amber 200": ["#FFE082", 222],
      \"Amber 300": ["#FFD54F", 221],
      \"Amber 400": ["#FFCA28", 220],
      \"Amber 500": ["#FFC107", 214],
      \"Amber 600": ["#FFB300", 214],
      \"Amber 700": ["#FFA000", 214],
      \"Amber 800": ["#FF8F00", 208],
      \"Amber 900": ["#FF6F00", 202],
      \"Amber A100": ["#FFE57F", 222],
      \"Amber A200": ["#FFD740", 221],
      \"Amber A400": ["#FFC400", 220],
      \"Amber A700": ["#FFAB00", 214],
      \"Orange 50": ["#FFF3E0", 230],
      \"Orange 100": ["#FFE0B2", 223],
      \"Orange 200": ["#FFCC80", 222],
      \"Orange 300": ["#FFB74D", 215],
      \"Orange 400": ["#FFA726", 214],
      \"Orange 500": ["#FF9800", 208],
      \"Orange 600": ["#FB8C00", 208],
      \"Orange 700": ["#F57C00", 208],
      \"Orange 800": ["#EF6C00", 202],
      \"Orange 900": ["#E65100", 166],
      \"Orange A100": ["#FFD180", 222],
      \"Orange A200": ["#FFAB40", 215],
      \"Orange A400": ["#FF9100", 208],
      \"Orange A700": ["#FF6D00", 202],
      \"Deep Orange 50": ["#FBE9E7", 255],
      \"Deep Orange 100": ["#FFCCBC", 223],
      \"Deep Orange 200": ["#FFAB91", 216],
      \"Deep Orange 300": ["#FF8A65", 209],
      \"Deep Orange 400": ["#FF7043", 203],
      \"Deep Orange 500": ["#FF5722", 202],
      \"Deep Orange 600": ["#F4511E", 202],
      \"Deep Orange 700": ["#E64A19", 166],
      \"Deep Orange 800": ["#D84315", 166],
      \"Deep Orange 900": ["#BF360C", 130],
      \"Deep Orange A100": ["#FF9E80", 216],
      \"Deep Orange A200": ["#FF6E40", 203],
      \"Deep Orange A400": ["#FF3D00", 202],
      \"Deep Orange A700": ["#DD2C00", 160],
      \"Brown 50": ["#EFEBE9", 255],
      \"Brown 100": ["#D7CCC8", 252],
      \"Brown 200": ["#BCAAA4", 145],
      \"Brown 300": ["#A1887F", 138],
      \"Brown 400": ["#8D6E63", 95],
      \"Brown 500": ["#795548", 95],
      \"Brown 600": ["#6D4C41", 240],
      \"Brown 700": ["#5D4037", 238],
      \"Brown 800": ["#4E342E", 237],
      \"Brown 900": ["#3E2723", 236],
      \"Grey 50": ["#FAFAFA", 231],
      \"Grey 100": ["#F5F5F5", 255],
      \"Grey 200": ["#EEEEEE", 255],
      \"Grey 300": ["#E0E0E0", 254],
      \"Grey 400": ["#BDBDBD", 250],
      \"Grey 500": ["#9E9E9E", 247],
      \"Grey 600": ["#757575", 243],
      \"Grey 700": ["#616161", 241],
      \"Grey 800": ["#424242", 238],
      \"Grey 900": ["#212121", 235],
      \"Blue Grey 50": ["#ECEFF1", 255],
      \"Blue Grey 100": ["#CFD8DC", 188],
      \"Blue Grey 200": ["#B0BEC5", 250],
      \"Blue Grey 300": ["#90A4AE", 109],
      \"Blue Grey 400": ["#78909C", 103],
      \"Blue Grey 500": ["#607D8B", 66],
      \"Blue Grey 600": ["#546E7A", 60],
      \"Blue Grey 700": ["#455A64", 240],
      \"Blue Grey 800": ["#37474F", 238],
      \"Blue Grey 900": ["#263238", 236],
      \}


" # Default CMap definiton

let g:bolero#colormap = s:MaterialCMap

" Augment the default map with our own customizations
let g:bolero#colormap["Black"] = ["#000000", 16]
let g:bolero#colormap["White"] = ["#FFFFFF", 231]
let g:bolero#colormap["Dark Grey 50"] = ["#606060", 241]
let g:bolero#colormap["Dark Grey 100"] = ["#585858", 240]
let g:bolero#colormap["Dark Grey 200"] = ["#4e4e4e", 239]
let g:bolero#colormap["Dark Grey 300"] = ["#444444", 238]
let g:bolero#colormap["Dark Grey 400"] = ["#3a3a3a", 237]
let g:bolero#colormap["Dark Grey 500"] = ["#303030", 236]
let g:bolero#colormap["Dark Grey 600"] = ["#262626", 235]
let g:bolero#colormap["Dark Grey 700"] = ["#1c1c1c", 234]
let g:bolero#colormap["Dark Grey 800"] = ["#121212", 233]
let g:bolero#colormap["Dark Grey 900"] = ["#080808", 232]


" # Functions

" Functions with prefix `filename#` are lazy loaded


" Utility to set a highlight group using cterm index-valued colors
"
" Uses g:bolero#colormap to also set the gui versions.
"
" Args:
"   group: highlight group name
"   values: dictionary of the form {'fg': <int>, 'bg': <int>, 'usenone': 1}
"     where all the keys are optional. If a key is present, the corresponding
"     highlight color is set ('fg' stands for 'foregoround' and 'bg' for
"     'background')
"
" Notes:
"   'hi' is shorthand for 'highlight'
"   To check the meaning of the hi groups, :help 'hi'
function! bolero#HL(group, values)
  let cmd = "hi " . a:group
  if has_key(a:values, 'fg')
    let l:col = g:bolero#colormap[a:values['fg']]
    let cmd .= " guifg=" . string(l:col[0]) . " ctermfg=" . string(l:col[1])
  endif
  if has_key(a:values, 'bg')
    let l:col = g:bolero#colormap[a:values['bg']]
    let cmd .= " guibg=" . string(l:col[0]) . " ctermbg=" . string(l:col[1])
  endif
  if has_key(a:values, 'usenone')
    let cmd .= " cterm=NONE"
  endif
  " override if there is gui definitions
  if has_key(a:values, 'guifg')
    let cmd .= " guifg=" . a:values['guifg']
  endif
  if has_key(a:values, 'guibg')
    let cmd .= " guibg=" . a:values['guibg']
  endif
  execute(cmd)
endfunction


" TODO: Add docstring
function! bolero#flip(color_def)
  let l:out = {}
  if has_key(a:color_def, 'fg')
    let l:out.bg = a:color_def['fg']
  endif
  if has_key(a:color_def, 'bg')
    let l:out.fg = a:color_def['bg']
  endif
  return l:out
endfunction


" # Dark Theme Definition

" Vim native UI colors (UI is basically what's left after removing
" syntax-related highligting
let s:dark_ui               = {}
let s:dark_ui.base_bg       = {'bg': 'Black'}
let s:dark_ui.main_bg       = {'bg': 'Dark Grey 800'}
let s:dark_ui.main_fg       = {'fg': 'Grey 200'}
let s:dark_ui.hlted         = {'bg': 'Grey 900', 'fg': 'White'}
let s:dark_ui.hlted_bg      = {'bg': 'Grey 900'}
let s:dark_ui.gutter        = {'fg': 'Blue Grey 500'}
let s:dark_ui.yellow_accent = {'fg': 'Yellow A700'}
let s:dark_ui.green_accent  = {'fg': 'Green 600'}
let s:dark_ui.blue_accent   = {'fg': 'Light Blue 400'}
let s:dark_ui.selection     = {'bg': 'Green 600', 'fg': 'Grey 200'}
let s:dark_ui.alert         = {'bg': 'Yellow 500', 'fg': 'Grey 900'}
let s:dark_ui.warn          = {'bg': 'Dark Grey 900', 'fg': 'Pink A100'}
let s:dark_ui.error         = {'bg': 'Red A700', 'fg': 'Grey 400'}
let s:dark_ui.info          = {'bg': 'Lime A700', 'fg': 'Green 900'}

" Syntax related highlighiting
let s:dark_syntax           = {}
let s:dark_syntax.string    = {'fg': 'Amber 700'}
let s:dark_syntax.comment   = {'fg': 'Blue Grey 500'}
let s:dark_syntax.constant  = {'fg': 'Pink 600'}
let s:dark_syntax.float     = {'fg': 'Blue 600'}
let s:dark_syntax.func_name = {'fg': 'Red 500'}
let s:dark_syntax.type      = {'fg': 'Lime A700'}
let s:dark_syntax.special   = {'fg': 'Light Blue 300'}
let s:dark_syntax.statement = {'fg': 'Green 500'}


" # Light Theme Definition

" Vim native UI colors (UI is basically what's left after removing
" syntax-related highligting
let s:light_ui               = {}
let s:light_ui.base_bg       = {'bg': 'Brown 50'}
let s:light_ui.main_bg       = {'bg': 'Amber 50'}
let s:light_ui.main_fg       = {'fg': 'Brown 800'}
let s:light_ui.hlted         = {'bg': 'Amber 100', 'fg': 'Brown 500'}
let s:light_ui.hlted_bg      = {'bg': 'Amber 100'}
let s:light_ui.gutter        = {'fg': 'Brown 300'}
let s:light_ui.yellow_accent = {'fg': 'Yellow 900'}
let s:light_ui.green_accent  = {'fg': 'Green 600'}
let s:light_ui.blue_accent   = {'fg': 'Blue 400'}
let s:light_ui.selection     = {'bg': 'Green 600', 'fg': 'Grey 200'}
let s:light_ui.alert         = {'bg': 'Yellow 500', 'fg': 'Grey 900'}
let s:light_ui.warn          = {'bg': 'Purple A100', 'fg': 'Grey 900'}
let s:light_ui.error         = {'bg': 'Red A700', 'fg': 'Grey 400'}
let s:light_ui.info          = {'bg': 'Lime A700', 'fg': 'Green 900'}

" Syntax related highlighiting
let s:light_syntax           = {}
let s:light_syntax.string    = {'fg': 'Indigo 300'}
let s:light_syntax.comment   = {'fg': 'Brown 300'}
let s:light_syntax.constant  = {'fg': 'Pink 600'}
let s:light_syntax.float     = {'fg': 'Light Green A700'}
let s:light_syntax.func_name = {'fg': 'Red 700'}
let s:light_syntax.type      = {'fg': 'Blue 500'}
let s:light_syntax.special   = {'fg': 'Purple 700'}
let s:light_syntax.statement = {'fg': 'Green 400'}



" # Lightline Theme

" We'll use a single lightline theme for both dark and light versions of bolero
" This should also be considered part of the UI from a user point-of-view, but
" since it realy configures the vim-lghtln plugin, we separate it
let s:lghtln          = {}
let s:lghtln.accent1  = {'fg': 'Blue 50', 'bg': 'Blue Grey 700'}
let s:lghtln.accent2  = {'fg': 'Blue Grey 900', 'bg': 'Blue Grey 200'}
let s:lghtln.inactive = {'fg': 'Grey 600', 'bg': 'Grey 900'}
let s:lghtln.insert   = {'fg': 'Green 900', 'bg': 'Yellow 500'}
let s:lghtln.visual   = {'fg': 'Green 900', 'bg': 'Light Green 500'}
let s:lghtln.select   = {'fg': 'Blue Grey 50', 'bg': 'Blue 400'}
let s:lghtln.replace  = {'fg': 'Blue Grey 700', 'bg': 'Amber 500'}

" # Global interfaces

" Gloabl dictionary to be accessed by anyone who cares
let g:bolero_dark = {}
let g:bolero_dark.ui = s:dark_ui
let g:bolero_dark.syntax = s:dark_syntax
let g:bolero_dark.lghtln = s:lghtln

" Gloabl dictionary to be accessed by anyone who cares
let g:bolero_light = {}
let g:bolero_light.ui = deepcopy(s:light_ui)
let g:bolero_light.syntax = deepcopy(s:light_syntax)
let g:bolero_light.lghtln = deepcopy(s:lghtln)
" lightline overrides for light theme
let g:bolero_light.lghtln.inactive = {'fg': 'Brow 300', 'bg': 'Brown 100'}
