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


" # Functions

" Functions with prefix `filename#` are lazy loaded


" Toggle between both versions of bolero theme (dark and light)
function! BoleroToggle()
  if g:colors_name ==# 'bolero_dark'
    " if exists('g:airline_theme')
    "   let g:airline_theme = 'bolero_light'
    " endif
    colorscheme bolero_light
    echom "Toggled bolero theme"
  elseif g:colors_name ==# 'bolero_light'
    " if exists('g:airline_theme')
    "   let g:airline_theme = 'bolero_dark'
    " endif
    colorscheme bolero_dark
    echom "Toggled bolero theme"
  else
    echom "You are not using bolero right now, so won't toogle"
  endif
endfunction

" Run the whole enchilada
function! BoleroUpdate(basecolor)
  let g:bolero#maincolor = a:basecolor
  exec 'colorscheme ' . g:colors_name
endfunction


let s:path = expand('<sfile>:p:h:h')
exec 'source ' . s:path . '/autoload/bolero/config.vim'
