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

" " Author: Jorge Herrera <jherreras@gmail.com>
" " Maintainer: Jorge Herrera <jherreras@gmail.com>
" " Notes:


" # Content

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "bolero_dark"
let colors_name = "bolero_dark"



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

call cheerful#HL("Normal",          g:bolero_dark.ui.main_bg)
call cheerful#HL("Normal",          g:bolero_dark.ui.main_fg)
call cheerful#HL("Cursor",          {'bg': 'Green 500', 'fg': 'Grey 200'})
call cheerful#HL("LineNr",          g:bolero_dark.ui.gutter)
call cheerful#HL("LineNr",          {'fg': g:bolero_dark.syntax.comment.fg})
call cheerful#HL("EndOfBuffer",     g:bolero_dark.ui.hlted_bg)
call cheerful#HL("CursorColumn",    g:bolero_dark.ui.hlted)
call cheerful#HL("CursorLine",      g:bolero_dark.ui.hlted_bg)
call cheerful#HL("CursorLine",      {'usenone': 1})
call cheerful#HL("CursorLineNr",    g:bolero_dark.ui.yellow_accent)
call cheerful#HL("ColorColumn",     g:bolero_dark.ui.hlted_bg)
call cheerful#HL("Visual",          g:bolero_dark.ui.selection)
call cheerful#HL("Visual",          {'fg': 'White', 'usenone': 1})

" " Gutter
call cheerful#HL("FoldColumn",      g:bolero_dark.ui.gutter)
call cheerful#HL("Folded",          g:bolero_dark.ui.hlted)
call cheerful#HL("SignColumn",      g:bolero_dark.ui.gutter)

" Splits
" NeoVim has a reversed interpretation of BG and FG than vim
call cheerful#HL("VertSplit",       g:bolero_dark.ui.green_accent)
call cheerful#HL("VertSplit",       {'bg': 'Black'})
if has('nvim')
  call cheerful#HL("VertSplit",     {
        \'bg': g:bolero_dark.ui.green_accent.fg,
        \'fg': 'Black',
        \})
endif
call cheerful#HL("VertSplit",       {'usenone': 1})

" Window / Tabs
call cheerful#HL("TabLine",         {'bg': 'Green 800', 'fg': 'Grey 200'})
call cheerful#HL("TabLineFill",     {'bg': 'Black', 'fg': 'Grey 200', 'usenone': 1})
call cheerful#HL("TabLineSel",      g:bolero_dark.ui.selection)

" " File Navigation / Searching
call cheerful#HL("Search",          {'bg': 'Yellow 600', 'fg': 'Grey 900'})
call cheerful#HL("IncSearch",       {'fg': 'Green 500', 'bg': 'Grey 200'})
call cheerful#HL("Directory",       {'fg': 'Light Blue 400', 'usenone': 1})

" " Autocomplete menu
call cheerful#HL("Pmenu",           {'bg': 'Grey 500', 'fg': 'Black'})
call cheerful#HL("PmenuSel",        g:bolero_dark.ui.green_accent)
call cheerful#HL("PmenuSel",        {'bg': 'Green 800'})

" Wildmenu/bufferline
call cheerful#HL("WildMenu",        g:bolero_dark.ui.selection)
call cheerful#HL("WildMenu",        {'usenone': 1})

" keep `StatusLine` similar to VertSplit
call cheerful#HL("StatusLine",      g:bolero_dark.ui.green_accent)
call cheerful#HL("StatusLine",      {'bg': 'Black', 'usenone': 1})
call cheerful#HL("StatusLineNC",    g:bolero_dark.ui.selection)  " use to have cterm=NONE
call cheerful#HL("StatusLineNC",    {'usenone': 1})

call cheerful#HL("SpellBad",        g:bolero_dark.ui.warn)
call cheerful#HL("SpellCap",        g:bolero_dark.ui.alert)
call cheerful#HL("MatchParen",      g:bolero_dark.ui.error)


" Special characters (the ones shown with `:set list`)
" The "NonText" highlighting will be used for "eol", "extends" and
" precedes".  "SpecialKey" for "nbsp", "tab" and "trail".
call cheerful#HL("SpecialKey",      g:bolero_dark.ui.warn)
call cheerful#HL("NonText",         g:bolero_dark.ui.warn)

" NERDTree customizations
call cheerful#HL("nerdtreeFileExtensionLabel_sh", g:bolero_dark.syntax.string)




" ### SYNTAX

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
call cheerful#HL("Comment", g:bolero_dark.syntax.comment)

call cheerful#HL("Constant", g:bolero_dark.syntax.constant)
call cheerful#HL("String", g:bolero_dark.syntax.string)
call cheerful#HL("Float", g:bolero_dark.syntax.float)
hi   link   Character       String
hi   link   Number          Float
hi   link   Boolean         Float

call cheerful#HL("Identifier", g:bolero_dark.syntax.func_name)
" hi   link         Function        Identifier


call cheerful#HL("Statement", g:bolero_dark.syntax.statement)
" cheerful#HL("Conditional", {})
" cheerful#HL("Repeat", {})
" cheerful#HL("Label", {})
" cheerful#HL("Operator", {})
" cheerful#HL("Keyword", {})
" cheerful#HL("Exception", {})

call cheerful#HL("PreProc", g:bolero_dark.ui.yellow_accent)
" cheerful#HL("PreProc", {})
" cheerful#HL("Include", {})
" cheerful#HL("Define", {})
" cheerful#HL("Macro", {})
" cheerful#HL("PreCondit", {})

call cheerful#HL("Type", g:bolero_dark.syntax.type)
" cheerful#HL("StorageClass", {})
" cheerful#HL("Structure", {})
" cheerful#HL("Typedef", {})

call cheerful#HL("Special", g:bolero_dark.syntax.special)
" cheerful#HL("SpecialChar", {})
" cheerful#HL("Tag", {})
" cheerful#HL("Delimiter", {})
" cheerful#HL("SpecialComment", {})
" cheerful#HL("Debug", {})

call cheerful#HL("Underlined", g:bolero_dark.ui.yellow_accent)

" cheerful#HL("Ignore", {})

"  palette red is too bright for background
call cheerful#HL("Error", g:bolero_dark.ui.error)

call cheerful#HL("Todo", {'bg': 'Light Blue 400', 'fg': 'Black'})


" ### LANGUAGE SPECIFIC

" #### Python

call cheerful#HL("pythonFunction", g:bolero_dark.syntax.func_name)  " use to have cterm=NONE
hi  link pythonInclude    Type
hi  link pythonStatement  Type
hi  link pythonDecoratorName pythonDecorator
hi  link pythonBuiltin    PreProc
hi  link pythonTodo       Todo


" #### C/C++

" #### Vim

" ToDo: These should be tied `g:bolero_dark.ui` definitions

" hi   link      vimHiCtermFgBg  Normal
" hi   link      vimHiCterm      vimHiCtermFgBg
" hi   link      vimHiGuiFgBg    vimHiCtermFgBg
" hi   link      vimGroup        Include
" hi   link      vimHiGroup      vimGroup
" hi   link      vimHiGuiRgb     Operator
" hi   link      vimHiNmbr       Operator
hi   link      vimVar      Type
hi   link      vimParenSep Special
call cheerful#HL("helpOption", g:bolero_dark.ui.yellow_accent)
call cheerful#HL("helpHyperTextEntry", g:bolero_dark.ui.green_accent)
call cheerful#HL("helpHeadline", g:bolero_dark.ui.yellow_accent)


" #### Markdown

hi   link      htmlH1          Special
call cheerful#HL("mkdCode", g:bolero_dark.ui.yellow_accent)
call cheerful#HL("mkdCode", {'bg': 'Grey 800'})

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
" let g:bufferline_active_highlight = 'StatusLineNC'
" let g:bufferline_inactive_highlight = 'StatusLine'
"
" to highlight buffer labels in airline. I prefer to use my own custom ones:
" let g:bufferline_active_highlight = 'ActiveBuffer'
" let g:bufferline_inactive_highlight = 'InactiveBuffer'
"
" Here I define their highlight colors
" call cheerful#HL("ActiveBuffer", g:bolero_dark.ui.green_accent)
" call cheerful#HL("ActiveBuffer", {'bg': 'Grey 800', 'fg': 'White', 'usenone': 1})
" call cheerful#HL("InactiveBuffer", g:bolero_dark.ui.yellow_accent)
" call cheerful#HL("InactiveBuffer", {'bg': 'Grey 800', 'fg': 'Grey 500', 'usenone': 1})

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode


" #### ALE Specific Ones

" Try to keep these in sync with ALE's colortheme
" (~/.vim/autoload/lightline/colorscheme/cheerfully_dark.vim)
call cheerful#HL("ALEErrorSign",               g:bolero_dark.ui.error)
call cheerful#HL("ALEStyleErrorSign",          g:bolero_dark.ui.error)
call cheerful#HL("ALEWarningSign",             g:bolero_dark.ui.alert)
call cheerful#HL("ALEStyleWarningSign",        g:bolero_dark.ui.alert)
call cheerful#HL("ALEInfoSign",                g:bolero_dark.ui.info)
call cheerful#HL("ALESignColumnWithErrors",    g:bolero_dark.ui.error)
call cheerful#HL("ALESignColumnWithoutErrors", g:bolero_dark.ui.error)



" #### TagBar Specific Ones

hi link TagbarScope pythonFunction
hi link TagbarKind PreProc
hi link TagbarType Type



" # Finally *** DON'T ADD ANYTHING AFTER THIS SECTION ***
" let g:lightline.colorscheme = 'bolero'
" call lightline#colorscheme()
