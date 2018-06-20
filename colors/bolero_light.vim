" vim:foldmethod=expr:foldlevel=0:foldexpr=MDFold(v\:lnum):foldtext=FoldText()

" # File Info

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


" ## Description

" Vim cheerful dark colorscheme
" " Maintainer: Jorge Herrera <jherreras@gmail.com>
" " Notes:


" # Content

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "bolero_light"
let colors_name = "bolero_light"



" # Color Highlighting

" Color reference for default CMap
" https://www.materialui.co/colors


" ## Theme defs

"   0 -> Black
"  15 -> White
"  22 -> Green 900
"  28 -> Green 800
"  34 -> Green 500
"  39 -> Light Blue 400
"  67 -> Indigo 400
"  70 -> Light Green 600
" 105 -> Deep Purple 300
" 124 -> Red A700
" 148 -> Lime 700
" 162 -> Pink 600
" 163 -> Pink 600
" 196 -> Red A700
" 214 -> Amber 700
" 220 -> Yellow A700
" 233 -> Grey 900
" 234 -> Blue Grey 900
" 235 -> Blue Grey 800
" 238 -> Grey 800
" 244 -> Grey 600
" 246 -> Grey 500
" 255 -> Grey 200

" ### UI

" Edit window

call cheerful#HL("Normal",          g:bolero_light.ui.main_bg)
call cheerful#HL("Normal",          g:bolero_light.ui.main_fg)
" Usually the terminal application highjacks the cursor, so no point in
" customizing it
" call cheerful#HL("Cursor",          {'bg': 'Green 500', 'fg': 'Grey 200'})
call cheerful#HL("LineNr",          g:bolero_light.ui.base_bg)
call cheerful#HL("LineNr",          g:bolero_light.ui.gutter)
call cheerful#HL("EndOfBuffer",     g:bolero_light.ui.base_bg)
call cheerful#HL("CursorColumn",    g:bolero_light.ui.hlted)
call cheerful#HL("CursorLine",      g:bolero_light.ui.hlted_bg)
call cheerful#HL("CursorLine",      {'usenone': 1})
call cheerful#HL("CursorLineNr",    g:bolero_light.ui.yellow_accent)
call cheerful#HL("ColorColumn",     g:bolero_light.ui.hlted_bg)
call cheerful#HL("Visual",          g:bolero_light.lghtln.accent1)

" " Gutter
call cheerful#HL("FoldColumn",      g:bolero_light.ui.base_bg)
call cheerful#HL("FoldColumn",      g:bolero_light.ui.gutter)
call cheerful#HL("Folded",          g:bolero_light.ui.hlted)
call cheerful#HL("SignColumn",      g:bolero_light.ui.base_bg)
call cheerful#HL("SignColumn",      g:bolero_light.ui.gutter)

" Splits
" NeoVim has a reversed interpretation of BG and FG than vim
call cheerful#HL("VertSplit",       g:bolero_light.lghtln.accent2)
call cheerful#HL("VertSplit",       g:bolero_light.ui.base_bg)
if has('nvim')
call cheerful#HL("VertSplit",       cheerful#flip(g:bolero_light.lghtln.accent2))
  call cheerful#HL("VertSplit",     cheerful#flip(g:bolero_light.ui.base_bg))
endif
call cheerful#HL("VertSplit",       {'usenone': 1})

" Window / Tabs
" who needs Tabs anyway
" call cheerful#HL("TabLine",         {'bg': 'Green 800', 'fg': 'Grey 200'})
" call cheerful#HL("TabLineFill",     g:bolero_light.ui.base_bg)
" call cheerful#HL("TabLineFill",     g:bolero_light.ui.main_fg)
" call cheerful#HL("TabLineFill",     {'usenone': 1})
" call cheerful#HL("TabLineSel",      g:bolero_light.ui.selection)

" " File Navigation / Searching
call cheerful#HL("Search",          g:bolero_light.ui.alert)
call cheerful#HL("IncSearch",       g:bolero_light.ui.blue_accent)
call cheerful#HL("Directory",       g:bolero_light.ui.blue_accent)

" " Autocomplete menu
call cheerful#HL("Pmenu",           g:bolero_light.lghtln.accent2)
call cheerful#HL("PmenuSel",        g:bolero_light.lghtln.accent1)

" Wildmenu/bufferline
call cheerful#HL("WildMenu",        g:bolero_dark.lghtln.accent2)
call cheerful#HL("WildMenu",        {'usenone': 1})

" keep `StatusLine` similar to VertSplit
" Status Line inverted colors control bothe WildMenu (non-selected) and the
" vert-split continuation in the bufferline (only visible when there's a v-split
call cheerful#HL("StatusLine",      cheerful#flip(g:bolero_light.lghtln.accent1))
call cheerful#HL("StatusLine",      {'usenone': 1})
call cheerful#HL("StatusLineNC",    g:bolero_light.ui.selection)
call cheerful#HL("StatusLineNC",    {'usenone': 1})

call cheerful#HL("SpellBad",        g:bolero_light.ui.warn)
call cheerful#HL("SpellCap",        g:bolero_light.ui.alert)
call cheerful#HL("MatchParen",      g:bolero_light.ui.error)

call cheerful#HL("Underlined",      g:bolero_light.ui.yellow_accent)
" cheerful#HL("Ignore", {})
call cheerful#HL("Error",           g:bolero_light.ui.error)
call cheerful#HL("Todo",            cheerful#flip(g:bolero_light.ui.blue_accent))


" Special characters (the ones shown with `:set list`)
" The "NonText" highlighting will be used for "eol", "extends" and
" precedes".  "SpecialKey" for "nbsp", "tab" and "trail".
call cheerful#HL("SpecialKey",      g:bolero_light.ui.warn)
call cheerful#HL("NonText",         g:bolero_light.ui.warn)

" NERDTree customizations
call cheerful#HL("nerdtreeFileExtensionLabel_sh", g:bolero_light.syntax.string)




" ### SYNTAX

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
call cheerful#HL("Comment", g:bolero_light.syntax.comment)

call cheerful#HL("Constant", g:bolero_light.syntax.constant)
call cheerful#HL("String", g:bolero_light.syntax.string)
call cheerful#HL("Float", g:bolero_light.syntax.float)
hi   link   Character       String
hi   link   Number          Float
hi   link   Boolean         Float

call cheerful#HL("Identifier", g:bolero_light.syntax.func_name)
" hi   link         Function        Identifier


call cheerful#HL("Statement", g:bolero_light.syntax.statement)
" cheerful#HL("Conditional", {})
" cheerful#HL("Repeat", {})
" cheerful#HL("Label", {})
" cheerful#HL("Operator", {})
" cheerful#HL("Keyword", {})
" cheerful#HL("Exception", {})

call cheerful#HL("PreProc", g:bolero_light.ui.yellow_accent)
" cheerful#HL("PreProc", {})
" cheerful#HL("Include", {})
" cheerful#HL("Define", {})
" cheerful#HL("Macro", {})
" cheerful#HL("PreCondit", {})

call cheerful#HL("Type", g:bolero_light.syntax.type)
" cheerful#HL("StorageClass", {})
" cheerful#HL("Structure", {})
" cheerful#HL("Typedef", {})

call cheerful#HL("Special", g:bolero_light.syntax.special)
" cheerful#HL("SpecialChar", {})
" cheerful#HL("Tag", {})
" cheerful#HL("Delimiter", {})
" cheerful#HL("SpecialComment", {})
" cheerful#HL("Debug", {})

" ### LANGUAGE SPECIFIC

" #### Python

call cheerful#HL("pythonFunction", g:bolero_light.syntax.func_name)  " use to have cterm=NONE
hi  link pythonInclude    Type
hi  link pythonStatement  Type
hi  link pythonDecoratorName pythonDecorator
hi  link pythonBuiltin    PreProc
hi  link pythonTodo       Todo


" #### C/C++

" #### Vim

" ToDo: These should be tied `g:bolero_light.ui` definitions

" hi   link      vimHiCtermFgBg  Normal
" hi   link      vimHiCterm      vimHiCtermFgBg
" hi   link      vimHiGuiFgBg    vimHiCtermFgBg
" hi   link      vimGroup        Include
" hi   link      vimHiGroup      vimGroup
" hi   link      vimHiGuiRgb     Operator
" hi   link      vimHiNmbr       Operator
hi   link      vimVar      Type
hi   link      vimParenSep Special
call cheerful#HL("helpOption", g:bolero_light.ui.yellow_accent)
call cheerful#HL("helpHyperTextEntry", g:bolero_light.ui.green_accent)
call cheerful#HL("helpHeadline", g:bolero_light.ui.yellow_accent)


" #### Markdown

hi   link      htmlH1          Special
call cheerful#HL("mkdCode", g:bolero_light.ui.yellow_accent)
call cheerful#HL("mkdCode", g:bolero_light.ui.hlted_bg)

" #### Javascript

hi   link      jsGlobalObjects PreProc

" #### CSS

hi   link      cssColor        Float
hi   link      cssUIAttr       PreProc
hi   link      cssCommonAttr   PreProc

" ### Plugins

" #### Buffer Line
"
" By default, vim-bufferline/vim-airline integration uses
let g:bufferline_active_highlight = 'StatusLineNC'
let g:bufferline_inactive_highlight = 'StatusLine'
"
" to highlight buffer labels in airline. I prefer to use my own custom ones:
" let g:bufferline_active_highlight = 'ActiveBuffer'
" let g:bufferline_inactive_highlight = 'InactiveBuffer'
"
" Here I define their highlight colors
" call cheerful#HL("ActiveBuffer", g:bolero_light.ui.green_accent)
" call cheerful#HL("ActiveBuffer", {'bg': 'Grey 800', 'fg': 'White', 'usenone': 1})
" call cheerful#HL("InactiveBuffer", g:bolero_light.ui.yellow_accent)
" call cheerful#HL("InactiveBuffer", {'bg': 'Grey 800', 'fg': 'Grey 500', 'usenone': 1})

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode


" #### ALE Specific Ones

" Try to keep these in sync with ALE's colortheme
" (~/.vim/autoload/lightline/colorscheme/cheerfully_dark.vim)
call cheerful#HL("ALEErrorSign",               g:bolero_light.ui.error)
call cheerful#HL("ALEStyleErrorSign",          g:bolero_light.ui.error)
call cheerful#HL("ALEWarningSign",             g:bolero_light.ui.alert)
call cheerful#HL("ALEStyleWarningSign",        g:bolero_light.ui.alert)
call cheerful#HL("ALEInfoSign",                g:bolero_light.ui.info)
call cheerful#HL("ALESignColumnWithErrors",    g:bolero_light.ui.error)
call cheerful#HL("ALESignColumnWithoutErrors", g:bolero_light.ui.error)



" #### TagBar Specific Ones

hi link TagbarScope pythonFunction
hi link TagbarKind PreProc
hi link TagbarType Type



" # *** DON'T ADD ANYTHING AFTER THIS SECTION ***
"
" Update lightline automagically when sourcing this file
if exists('g:loaded_lightline')

  redir => s:path
  " :h:h => two directories up from this file
  silent echo expand('%:p:h:h')
  redir END

  let s:lightline_color_src = strpart(s:path, 1) . '/autoload/lightline/colorscheme/bolero.vim'
  " echom s:lightline_color_src
  exec "source " . s:lightline_color_src

	let g:lightline.colorscheme = 'bolero'
	call lightline#colorscheme()
endif
