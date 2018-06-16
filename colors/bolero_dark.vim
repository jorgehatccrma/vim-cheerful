" vim:foldmethod=expr:foldlevel=0:foldexpr=MDFold(v\:lnum):foldtext=FoldText()

" # Header

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

let s:structure               = {}
let s:structure.gutter        = {'bg': 'Black',      'fg': 'Grey 600' }
let s:structure.fold          = {'bg': 'Grey 900',   'fg': 'Grey 500' }
let s:structure.yellow_accent = {'fg': 'Yellow A700'                  }
let s:structure.green_accent  = {'fg': 'Green 600'                    }
let s:structure.selection     = {'bg': 'Green 600',  'fg': 'Grey 200' }
let s:structure.warn          = {'fg': 'Pink 600'                     }
let s:structure.alert         = {'bg': 'Amber 700',  'fg': 'Grey 800' }
let s:structure.error         = {'bg': 'Red A700',   'fg': 'Grey 400' }
let s:structure.info          = {'bg': 'Lime A700',  'fg': 'Green 900'}

let s:syntax                  = {}
let s:syntax.string           = {'fg': 'Amber 700'                    }
let s:syntax.comment          = {'fg': 'Blue Grey 500'                }
let s:syntax.constant         = {'fg': 'Pink 600'                     }
let s:syntax.float            = {'fg': 'Light Blue 400'               }
let s:syntax.func_name        = {'fg': 'Deep Orange A400'             }
let s:syntax.type             = {'fg': 'Lime A700'                    }
let s:syntax.special          = {'fg': 'Blue 500'                     }
let s:syntax.statement        = {'fg': 'Green 600'                    }

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

" ### GUI

" Edit window

call cheerful#HL("Normal",          {'bg': 'Grey 950', 'fg': 'Grey 200'})
call cheerful#HL("Cursor",          {'bg': 'Green 500', 'fg': 'Grey 200'})
call cheerful#HL("LineNr",          s:structure.gutter)
call cheerful#HL("EndOfBuffer",     s:structure.fold)
call cheerful#HL("CursorLine",      {'bg': 'Grey 900', 'usenone': 1})
call cheerful#HL("CursorColumn",    {'bg': 'Grey 900'})
call cheerful#HL("CursorLineNr",    s:structure.yellow_accent)
call cheerful#HL("ColorColumn",     {'bg': 'Grey 900'})
call cheerful#HL("Visual",          s:structure.selection)
call cheerful#HL("Visual",          {'fg': 'White', 'usenone': 1})

" " Gutter
call cheerful#HL("FoldColumn",      s:structure.gutter)
call cheerful#HL("Folded",          s:structure.fold)
call cheerful#HL("SignColumn",      s:structure.gutter)

" Window / Tabs
" NeoVim has a reversed interpretation of BG and FG than vim
call cheerful#HL("VertSplit",       {
      \'bg': 'Black',
      \'fg': s:structure.green_accent.fg,
      \'usenone': 1,
      \})
if has('nvim')
  call cheerful#HL("VertSplit",     {
        \'bg': s:structure.green_accent.fg,
        \'fg': 'Black',
        \'usenone': 1,
        \})
endif
call cheerful#HL("TabLine",         {'bg': 'Green 800', 'fg': 'Grey 200'})
call cheerful#HL("TabLineFill",     {'bg': 'Black', 'fg': 'Grey 200', 'usenone': 1})
call cheerful#HL("TabLineSel",      s:structure.selection)

" " File Navigation / Searching
call cheerful#HL("Search",          {'bg': 'Yellow 600', 'fg': 'Grey 900'})
call cheerful#HL("IncSearch",       {'fg': 'Green 500', 'bg': 'Grey 200'})
call cheerful#HL("Directory",       {'fg': 'Light Blue 400', 'usenone': 1})

" " Autocomplete menu
call cheerful#HL("Pmenu",           {'bg': 'Grey 500', 'fg': 'Black'})
call cheerful#HL("PmenuSel",        s:structure.green_accent)
call cheerful#HL("PmenuSel",        {'bg': 'Green 800'})

" Wildmenu/bufferline
call cheerful#HL("WildMenu",        s:structure.selection)  " use to have cterm=NONE
call cheerful#HL("StatusLine",      s:structure.green_accent)  " good idea to keep it similar to VertSplit
call cheerful#HL("StatusLine",      {'bg': 'Black', 'usenone': 1})  " good idea to keep it similar to VertSplit
call cheerful#HL("StatusLineNC",    s:structure.selection)  " use to have cterm=NONE

call cheerful#HL("SpellBad",        s:structure.warn)
call cheerful#HL("SpellCap",        s:structure.alert)
call cheerful#HL("MatchParen",      s:structure.alert)

" Special characters (the ones shown with `:set list`)
" The "NonText" highlighting will be used for "eol", "extends" and
" precedes".  "SpecialKey" for "nbsp", "tab" and "trail".
call cheerful#HL("SpecialKey",      s:structure.warn)
call cheerful#HL("NonText",         s:structure.warn)

" NERDTree customizations
call cheerful#HL("nerdtreeFileExtensionLabel_sh", s:syntax.string)


" ### SYNTAX

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
call cheerful#HL("Comment", s:syntax.comment)

call cheerful#HL("Constant", s:syntax.constant)
call cheerful#HL("String", s:syntax.string)
call cheerful#HL("Float", s:syntax.float)
hi   link   Character       String
hi   link   Number          Float
hi   link   Boolean         Float

call cheerful#HL("Identifier", s:syntax.func_name)
" hi   link         Function        Identifier


call cheerful#HL("Statement", s:syntax.statement)
" cheerful#HL("Conditional", {})
" cheerful#HL("Repeat", {})
" cheerful#HL("Label", {})
" cheerful#HL("Operator", {})
" cheerful#HL("Keyword", {})
" cheerful#HL("Exception", {})

call cheerful#HL("PreProc", s:structure.yellow_accent)
" cheerful#HL("PreProc", {})
" cheerful#HL("Include", {})
" cheerful#HL("Define", {})
" cheerful#HL("Macro", {})
" cheerful#HL("PreCondit", {})

call cheerful#HL("Type", s:syntax.type)
" cheerful#HL("StorageClass", {})
" cheerful#HL("Structure", {})
" cheerful#HL("Typedef", {})

call cheerful#HL("Special", s:syntax.special)
" cheerful#HL("SpecialChar", {})
" cheerful#HL("Tag", {})
" cheerful#HL("Delimiter", {})
" cheerful#HL("SpecialComment", {})
" cheerful#HL("Debug", {})

call cheerful#HL("Underlined", s:structure.yellow_accent)

" cheerful#HL("Ignore", {})

"  palette red is too bright for background
call cheerful#HL("Error", s:structure.error)

call cheerful#HL("Todo", {'bg': 'Light Blue 400', 'fg': 'Black'})


" ### LANGUAGE SPECIFIC

" #### Python

call cheerful#HL("pythonFunction", s:syntax.func_name)  " use to have cterm=NONE
hi  link pythonInclude    Type
hi  link pythonStatement  Type
hi  link pythonDecoratorName pythonDecorator
hi  link pythonBuiltin    PreProc
hi  link pythonTodo       Todo


" #### C/C++

" #### Vim

" hi   link      vimHiCtermFgBg  Normal
" hi   link      vimHiCterm      vimHiCtermFgBg
" hi   link      vimHiGuiFgBg    vimHiCtermFgBg
" hi   link      vimGroup        Include
" hi   link      vimHiGroup      vimGroup
" hi   link      vimHiGuiRgb     Operator
" hi   link      vimHiNmbr       Operator
hi   link      vimVar      Type
hi   link      vimParenSep Special


" #### Markdown

hi   link      htmlH1          Special
call cheerful#HL("mkdCode", s:structure.yellow_accent)
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
call cheerful#HL("ActiveBuffer", {'bg': 'Grey 800', 'fg': 'White', 'usenone': 1})
call cheerful#HL("InactiveBuffer", {'bg': 'Grey 800', 'fg': 'Grey 500', 'usenone': 1})

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode


" #### ALE Specific Ones

" Try to keep these in sync with ALE's colortheme
" (~/.vim/autoload/lightline/colorscheme/cheerfully_dark.vim)
call cheerful#HL("ALEErrorSign",               s:structure.error)
call cheerful#HL("ALEStyleErrorSign",          s:structure.error)
call cheerful#HL("ALEWarningSign",             s:structure.alert)
call cheerful#HL("ALEStyleWarningSign",        s:structure.alert)
call cheerful#HL("ALEInfoSign",                s:structure.info)
call cheerful#HL("ALESignColumnWithErrors",    s:structure.error)
call cheerful#HL("ALESignColumnWithoutErrors", s:structure.error)



" #### TagBar Specific Ones

" call cheerful#HL("TagbarKind",  s:syntax.string)
" call cheerful#HL("TagbarScope", s:syntax.func_name)
" call cheerful#HL("TagbarType",  {'fg': 'Green 800'})
hi link TagbarScope pythonFunction
hi link TagbarKind PreProc
hi link TagbarType Type
