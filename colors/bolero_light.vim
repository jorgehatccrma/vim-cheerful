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

" Vim bolero dark colorscheme
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


" ## UI

" Edit window

call bolero#HL("Normal",          g:bolero_light.ui.main_bg)
call bolero#HL("Normal",          g:bolero_light.ui.main_fg)
" Usually the terminal application highjacks the cursor, so no point in
" customizing it
" call bolero#HL("Cursor",          {'bg': 'Green 500', 'fg': 'Grey 200'})
call bolero#HL("LineNr",          g:bolero_light.ui.base_bg)
call bolero#HL("LineNr",          g:bolero_light.ui.gutter)
call bolero#HL("EndOfBuffer",     g:bolero_light.ui.base_bg)
call bolero#HL("CursorColumn",    g:bolero_light.ui.hlted)
call bolero#HL("CursorLine",      g:bolero_light.ui.hlted_bg)
call bolero#HL("CursorLine",      {'usenone': 1})
call bolero#HL("CursorLineNr",    g:bolero_light.ui.yellow_accent)
call bolero#HL("ColorColumn",     g:bolero_light.ui.hlted_bg)
call bolero#HL("Visual",          g:bolero_light.lghtln.accent2)

" " Gutter
call bolero#HL("FoldColumn",      g:bolero_light.ui.base_bg)
call bolero#HL("FoldColumn",      g:bolero_light.ui.gutter)
call bolero#HL("Folded",          g:bolero_light.ui.hlted)
call bolero#HL("SignColumn",      g:bolero_light.ui.base_bg)
call bolero#HL("SignColumn",      g:bolero_light.ui.gutter)

" Splits
" NeoVim has a reversed interpretation of BG and FG than vim
call bolero#HL("VertSplit",       g:bolero_light.lghtln.accent2)
call bolero#HL("VertSplit",       g:bolero_light.ui.base_bg)
if has('nvim')
call bolero#HL("VertSplit",       bolero#flip(g:bolero_light.lghtln.accent2))
  call bolero#HL("VertSplit",     bolero#flip(g:bolero_light.ui.base_bg))
endif
call bolero#HL("VertSplit",       {'usenone': 1})

" Window / Tabs
" who needs Tabs anyway
" call bolero#HL("TabLine",         {'bg': 'Green 800', 'fg': 'Grey 200'})
" call bolero#HL("TabLineFill",     g:bolero_light.ui.base_bg)
" call bolero#HL("TabLineFill",     g:bolero_light.ui.main_fg)
" call bolero#HL("TabLineFill",     {'usenone': 1})
" call bolero#HL("TabLineSel",      g:bolero_light.ui.selection)

" " File Navigation / Searching
call bolero#HL("Search",          g:bolero_light.ui.alert)
call bolero#HL("IncSearch",       g:bolero_light.ui.blue_accent)
call bolero#HL("Directory",       g:bolero_light.ui.blue_accent)

" " Autocomplete menu
call bolero#HL("Pmenu",           g:bolero_light.lghtln.accent2)
call bolero#HL("PmenuSel",        g:bolero_light.lghtln.accent1)

" Wildmenu/bufferline
call bolero#HL("WildMenu",        g:bolero_dark.lghtln.accent2)
call bolero#HL("WildMenu",        {'usenone': 1})

" keep `StatusLine` similar to VertSplit
" Status Line inverted colors control bothe WildMenu (non-selected) and the
" vert-split continuation in the bufferline (only visible when there's a v-split
call bolero#HL("StatusLine",      bolero#flip(g:bolero_light.lghtln.accent1))
call bolero#HL("StatusLine",      {'usenone': 1})
call bolero#HL("StatusLineNC",    g:bolero_light.ui.selection)
call bolero#HL("StatusLineNC",    {'usenone': 1})

call bolero#HL("SpellBad",        g:bolero_light.ui.warn)
call bolero#HL("SpellCap",        g:bolero_light.ui.alert)
call bolero#HL("MatchParen",      g:bolero_light.ui.error)

call bolero#HL("Underlined",      g:bolero_light.ui.yellow_accent)
" bolero#HL("Ignore", {})
call bolero#HL("Error",           g:bolero_light.ui.error)
call bolero#HL("Todo",            bolero#flip(g:bolero_light.ui.blue_accent))


" Special characters (the ones shown with `:set list`)
" The "NonText" highlighting will be used for "eol", "extends" and
" precedes".  "SpecialKey" for "nbsp", "tab" and "trail".
call bolero#HL("SpecialKey",      g:bolero_light.ui.warn)
call bolero#HL("NonText",         g:bolero_light.ui.warn)

" NERDTree customizations
call bolero#HL("nerdtreeFileExtensionLabel_sh", g:bolero_light.syntax.string)




" ## SYNTAX

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
call bolero#HL("Comment", g:bolero_light.syntax.comment)

call bolero#HL("Constant", g:bolero_light.syntax.constant)
call bolero#HL("String", g:bolero_light.syntax.string)
call bolero#HL("Float", g:bolero_light.syntax.float)
hi   link   Character       String
hi   link   Number          Float
hi   link   Boolean         Float

call bolero#HL("Identifier", g:bolero_light.syntax.func_name)
" hi   link         Function        Identifier


call bolero#HL("Statement", g:bolero_light.syntax.statement)
" bolero#HL("Conditional", {})
" bolero#HL("Repeat", {})
" bolero#HL("Label", {})
" bolero#HL("Operator", {})
" bolero#HL("Keyword", {})
" bolero#HL("Exception", {})

call bolero#HL("PreProc", g:bolero_light.ui.yellow_accent)
" bolero#HL("PreProc", {})
" bolero#HL("Include", {})
" bolero#HL("Define", {})
" bolero#HL("Macro", {})
" bolero#HL("PreCondit", {})

call bolero#HL("Type", g:bolero_light.syntax.type)
" bolero#HL("StorageClass", {})
" bolero#HL("Structure", {})
" bolero#HL("Typedef", {})

call bolero#HL("Special", g:bolero_light.syntax.special)
" bolero#HL("SpecialChar", {})
" bolero#HL("Tag", {})
" bolero#HL("Delimiter", {})
" bolero#HL("SpecialComment", {})
" bolero#HL("Debug", {})

" ## LANGUAGE SPECIFIC

" ### Python

call bolero#HL("pythonFunction", g:bolero_light.syntax.func_name)  " use to have cterm=NONE
hi  link pythonInclude    Type
hi  link pythonStatement  Type
hi  link pythonDecoratorName pythonDecorator
hi  link pythonBuiltin    PreProc
hi  link pythonTodo       Todo


" ### C/C++

" ### Vim

" hi   link      vimHiCtermFgBg  Normal
" hi   link      vimHiCterm      vimHiCtermFgBg
" hi   link      vimHiGuiFgBg    vimHiCtermFgBg
" hi   link      vimGroup        Include
" hi   link      vimHiGroup      vimGroup
" hi   link      vimHiGuiRgb     Operator
" hi   link      vimHiNmbr       Operator
hi   link      vimVar      Type
hi   link      vimParenSep Special
call bolero#HL("helpOption", g:bolero_light.ui.yellow_accent)
call bolero#HL("helpHyperTextEntry", g:bolero_light.ui.green_accent)
call bolero#HL("helpHeadline", g:bolero_light.ui.yellow_accent)


" ### Markdown

hi   link      htmlH1          Special
call bolero#HL("mkdCode", g:bolero_light.ui.yellow_accent)
call bolero#HL("mkdCode", g:bolero_light.ui.hlted_bg)

" ### Javascript

hi   link      jsGlobalObjects PreProc

" ### CSS

hi   link      cssColor        Float
hi   link      cssUIAttr       PreProc
hi   link      cssCommonAttr   PreProc

" ## Plugins

" ### Buffer Line
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
" call bolero#HL("ActiveBuffer", g:bolero_light.ui.green_accent)
" call bolero#HL("ActiveBuffer", {'bg': 'Grey 800', 'fg': 'White', 'usenone': 1})
" call bolero#HL("InactiveBuffer", g:bolero_light.ui.yellow_accent)
" call bolero#HL("InactiveBuffer", {'bg': 'Grey 800', 'fg': 'Grey 500', 'usenone': 1})

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode


" ### ALE Specific Ones

" Try to keep these in sync with ALE's colortheme
call bolero#HL("ALEErrorSign",               g:bolero_light.ui.error)
call bolero#HL("ALEStyleErrorSign",          g:bolero_light.ui.error)
call bolero#HL("ALEWarningSign",             g:bolero_light.ui.alert)
call bolero#HL("ALEStyleWarningSign",        g:bolero_light.ui.alert)
call bolero#HL("ALEInfoSign",                g:bolero_light.ui.info)
call bolero#HL("ALESignColumnWithErrors",    g:bolero_light.ui.error)
call bolero#HL("ALESignColumnWithoutErrors", g:bolero_light.ui.error)



" ### TagBar Specific Ones

hi link TagbarScope pythonFunction
hi link TagbarKind PreProc
hi link TagbarType Type



" # *** DON'T ADD ANYTHING AFTER THIS SECTION ***
"
" Update lightline automagically when sourcing this file
if exists('g:loaded_lightline')

  let s:path = expand('<sfile>:p:h:h')

  exec 'source ' . s:path . '/autoload/bolero.vim'
  exec 'source ' . s:path . '/autoload/lightline/colorscheme/bolero.vim'

	let g:lightline.colorscheme = 'bolero'
	call lightline#colorscheme()
endif

" Update tmux automagically when sourcing this file
if exists('g:bolero#maincolor')

  exec 'runtime! /plugin/tmux.vim'

endif
