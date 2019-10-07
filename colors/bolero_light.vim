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

call bolero#config#HL("Normal",          g:bolero_light.ui.main_bg)
call bolero#config#HL("Normal",          g:bolero_light.ui.main_fg)
" Usually the terminal application highjacks the cursor, so no point in
" customizing it
" call bolero#config#HL("Cursor",          {'bg': 'Green 500', 'fg': 'Grey 200'})
call bolero#config#HL("LineNr",          g:bolero_light.ui.base_bg)
call bolero#config#HL("LineNr",          g:bolero_light.ui.gutter)
call bolero#config#HL("EndOfBuffer",     g:bolero_light.ui.base_bg)
call bolero#config#HL("CursorColumn",    g:bolero_light.ui.hlted)
call bolero#config#HL("CursorLine",      g:bolero_light.ui.hlted_bg)
call bolero#config#HL("CursorLine",      {'usenone': 1})
call bolero#config#HL("CursorLineNr",    g:bolero_light.ui.yellow_accent)
call bolero#config#HL("ColorColumn",     g:bolero_light.ui.hlted_bg)
call bolero#config#HL("Visual",          g:bolero_light.lghtln.accent2)

" " Gutter
call bolero#config#HL("FoldColumn",      g:bolero_light.ui.base_bg)
call bolero#config#HL("FoldColumn",      g:bolero_light.ui.gutter)
call bolero#config#HL("Folded",          g:bolero_light.ui.hlted)
call bolero#config#HL("SignColumn",      g:bolero_light.ui.base_bg)
call bolero#config#HL("SignColumn",      g:bolero_light.ui.gutter)

" Splits
" NeoVim has a reversed interpretation of BG and FG than vim
call bolero#config#HL("VertSplit",       g:bolero_light.lghtln.accent1)
call bolero#config#HL("VertSplit",       g:bolero_light.ui.base_bg)
if has('nvim')
  call bolero#config#HL("VertSplit",       g:bolero_light.lghtln.accent1)
  call bolero#config#HL("VertSplit",     bolero#config#flip(g:bolero_light.ui.base_bg))
endif
call bolero#config#HL("VertSplit",       {'usenone': 1})

" Window / Tabs
" who needs Tabs anyway
" call bolero#config#HL("TabLine",         {'bg': 'Green 800', 'fg': 'Grey 200'})
" call bolero#config#HL("TabLineFill",     g:bolero_light.ui.base_bg)
" call bolero#config#HL("TabLineFill",     g:bolero_light.ui.main_fg)
" call bolero#config#HL("TabLineFill",     {'usenone': 1})
" call bolero#config#HL("TabLineSel",      g:bolero_light.ui.selection)

" " File Navigation / Searching
call bolero#config#HL("Search",          g:bolero_light.lghtln.accent1)
call bolero#config#HL("IncSearch",       g:bolero_light.lghtln.accent1)
call bolero#config#HL("Directory",       g:bolero_light.ui.blue_accent)

" " Autocomplete menu
call bolero#config#HL("Pmenu",           g:bolero_light.lghtln.accent2)
call bolero#config#HL("PmenuSel",        g:bolero#config#flip(g:bolero_light.lghtln.accent2))

" added
"
" Wildmenu/bufferline
call bolero#config#HL("WildMenu",        g:bolero_dark.lghtln.accent2)
call bolero#config#HL("WildMenu",        {'usenone': 1})

" keep `StatusLine` similar to VertSplit
" Status Line inverted colors control bothe WildMenu (non-selected) and the
" vert-split continuation in the bufferline (only visible when there's a v-split
call bolero#config#HL("StatusLine",      bolero#config#flip(g:bolero_light.lghtln.accent1))
call bolero#config#HL("StatusLine",      {'usenone': 1})
call bolero#config#HL("StatusLineNC",    g:bolero_light.ui.selection)
call bolero#config#HL("StatusLineNC",    {'usenone': 1})

call bolero#config#HL("SpellBad",        g:bolero_light.ui.warn)
call bolero#config#HL("SpellCap",        g:bolero_light.ui.alert)
call bolero#config#HL("MatchParen",      g:bolero_light.ui.error)

call bolero#config#HL("Underlined",      g:bolero_light.ui.yellow_accent)
" bolero#config#HL("Ignore", {})
call bolero#config#HL("Error",           g:bolero_light.ui.error)
call bolero#config#HL("Todo",            g:bolero_light.ui.todo)


" Special characters (the ones shown with `:set list`)
" The "NonText" highlighting will be used for "eol", "extends" and
" precedes".  "SpecialKey" for "nbsp", "tab" and "trail".
call bolero#config#HL("SpecialKey",      g:bolero_light.ui.warn)
call bolero#config#HL("NonText",         g:bolero_light.ui.warn)

" NERDTree customizations
call bolero#config#HL("nerdtreeFileExtensionLabel_sh", g:bolero_light.syntax.string)

" Git
call bolero#config#HL("DiffAdd", g:bolero_light.syntax.DiffAdd)
call bolero#config#HL("DiffChange", g:bolero_light.syntax.DiffChange)
call bolero#config#HL("DiffDelete", g:bolero_light.syntax.DiffDelete)
call bolero#config#HL("DiffText", g:bolero_light.syntax.DiffText)

call bolero#config#HL("diffAdded", g:bolero_light.ui.green_accent)
call bolero#config#HL("diffRemoved", g:bolero_light.ui.red_accent)



" ## SYNTAX

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
call bolero#config#HL("Comment", g:bolero_light.syntax.comment)

call bolero#config#HL("Constant", g:bolero_light.syntax.constant)
call bolero#config#HL("String", g:bolero_light.syntax.string)
call bolero#config#HL("Float", g:bolero_light.syntax.float)
hi   link   Character       String
hi   link   Number          Float
hi   link   Boolean         Float

call bolero#config#HL("Identifier", g:bolero_light.syntax.func_name)
" hi   link         Function        Identifier


call bolero#config#HL("Statement", g:bolero_light.syntax.statement)
" bolero#config#HL("Conditional", {})
" bolero#config#HL("Repeat", {})
" bolero#config#HL("Label", {})
" bolero#config#HL("Operator", {})
" bolero#config#HL("Keyword", {})
" bolero#config#HL("Exception", {})

call bolero#config#HL("PreProc", g:bolero_light.ui.yellow_accent)
" bolero#config#HL("PreProc", {})
" bolero#config#HL("Include", {})
" bolero#config#HL("Define", {})
" bolero#config#HL("Macro", {})
" bolero#config#HL("PreCondit", {})

call bolero#config#HL("Type", g:bolero_light.syntax.type)
" bolero#config#HL("StorageClass", {})
" bolero#config#HL("Structure", {})
" bolero#config#HL("Typedef", {})

call bolero#config#HL("Special", g:bolero_light.syntax.special)
" bolero#config#HL("SpecialChar", {})
" bolero#config#HL("Tag", {})
" bolero#config#HL("Delimiter", {})
" bolero#config#HL("SpecialComment", {})
" bolero#config#HL("Debug", {})

" ### LANGUAGE SPECIFIC

" ### Python

call bolero#config#HL("pythonFunction", g:bolero_light.syntax.func_name)  " use to have cterm=NONE
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
call bolero#config#HL("helpOption", g:bolero_light.ui.yellow_accent)
call bolero#config#HL("helpHyperTextEntry", g:bolero_light.ui.green_accent)
call bolero#config#HL("helpHeadline", g:bolero_light.ui.yellow_accent)


" ### Markdown

hi   link      htmlH1          Special
call bolero#config#HL("mkdCode", g:bolero_light.ui.yellow_accent)
call bolero#config#HL("mkdCode", g:bolero_light.ui.hlted_bg)

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
" call bolero#config#HL("ActiveBuffer", g:bolero_light.ui.green_accent)
" call bolero#config#HL("ActiveBuffer", {'bg': 'Grey 800', 'fg': 'White', 'usenone': 1})
" call bolero#config#HL("InactiveBuffer", g:bolero_light.ui.yellow_accent)
" call bolero#config#HL("InactiveBuffer", {'bg': 'Grey 800', 'fg': 'Grey 500', 'usenone': 1})

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode


" ### ALE Specific Ones

" Try to keep these in sync with ALE's colortheme
call bolero#config#HL("ALEErrorSign",               g:bolero_light.ui.error)
call bolero#config#HL("ALEStyleErrorSign",          g:bolero_light.ui.error)
call bolero#config#HL("ALEWarningSign",             g:bolero_light.ui.alert)
call bolero#config#HL("ALEStyleWarningSign",        g:bolero_light.ui.alert)
call bolero#config#HL("ALEInfoSign",                g:bolero_light.ui.info)
call bolero#config#HL("ALESignColumnWithErrors",    g:bolero_light.ui.error)
call bolero#config#HL("ALESignColumnWithoutErrors", g:bolero_light.ui.error)



" ### TagBar Specific Ones

hi link TagbarScope pythonFunction
hi link TagbarKind PreProc
hi link TagbarType Type



" # *** DON'T ADD ANYTHING AFTER THIS SECTION ***
"
" Update lightline automagically when sourcing this file
if exists('g:loaded_lightline')

  let s:path = expand('<sfile>:p:h:h')

  exec 'source ' . s:path . '/autoload/bolero/config.vim'
  exec 'source ' . s:path . '/autoload/lightline/colorscheme/bolero.vim'

	let g:lightline.colorscheme = 'bolero'
	call lightline#colorscheme()
endif
