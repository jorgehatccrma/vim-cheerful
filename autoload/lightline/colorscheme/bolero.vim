scriptencoding utf-8


" Define theme

let s:ui = {}
let s:ui.lightline = {}
let s:ui.lightline.lt1 = g:bolero_dark.lightline.accent1
let s:ui.lightline.lt2 = g:bolero_dark.lightline.accent2
let s:ui.lightline.rt1 = g:bolero_dark.ui.warn
let s:ui.lightline.rt2 = deepcopy(s:ui.lightline.lt1)
let s:ui.lightline.mid  = deepcopy(s:ui.lightline.lt2)
let s:ui.lightline.inactive = {'fg': 'Grey 600', 'bg': 'Grey 900'}

" these 4 should be eye-catching
let s:ui.lightline.check = g:bolero_dark.ui.warn
let s:ui.lightline.error = g:bolero_dark.ui.error
let s:ui.lightline.warn  = g:bolero_dark.ui.alert
let s:ui.lightline.ok    = g:bolero_dark.ui.info

let s:ui.lightline.insert = g:bolero_dark.ui.alert
let s:ui.lightline.visual = g:bolero_dark.ui.info
" let s:ui.lightline.select = g:bolero_dark.ui.error
let s:ui.lightline.select = {'fg': 'Blue Grey 50', 'bg': 'Blue 400'}
let s:ui.lightline.replace = g:bolero_dark.ui.warn
" let s:ui.lightline.insert = {'fg': 'Green 900', 'bg': 'Yellow 500'}
" let s:ui.lightline.visual = {'fg': 'Green 900', 'bg': 'Light Green 500'}
" let s:ui.lightline.select = {'fg': 'Blue Grey 50', 'bg': 'Blue 400'}
" let s:ui.lightline.replace = {'fg': 'Blue Grey 700', 'bg': 'Amber 500'}


" Generates highlighting list to be applied to a lightline element
function! HLElem(elem, ...)
  let fg = get(g:cheerful#colormap, get(a:elem, 'fg', 'White'), ['#FFFFFF', 15])
  let bg = get(g:cheerful#colormap, get(a:elem, 'bg', 'Black'), ['#000000', 0])
  let l:color = [fg[0], bg[0], fg[1], bg[1]] + a:000
  " echo l:color
  return l:color
endfunction


" Assign colors to elements in the bar
let s:p = {
      \'normal': {},
      \'insert': {},
      \'visual': {},
      \'select': {},
      \'replace': {},
      \}

let s:p.normal.left = [HLElem(s:ui.lightline.lt1),HLElem(s:ui.lightline.lt2),]
let s:p.normal.right = [HLElem(s:ui.lightline.rt1),HLElem(s:ui.lightline.rt2),]
let s:p.normal.middle = [HLElem(s:ui.lightline.mid),]

let s:p.normal.ALEchecking = [HLElem(s:ui.lightline.check),]
let s:p.normal.ALEerror = [HLElem(s:ui.lightline.error),]
let s:p.normal.ALEwarning = [HLElem(s:ui.lightline.warn),]
let s:p.normal.ALEok = [HLElem(s:ui.lightline.ok),]

let s:p.insert = deepcopy(s:p.normal)
let s:p.visual = deepcopy(s:p.normal)
let s:p.select = deepcopy(s:p.normal)
let s:p.replace = deepcopy(s:p.normal)
let s:p.inactive = deepcopy(s:p.normal)

let s:p.inactive.left = [HLElem(s:ui.lightline.inactive), HLElem(s:ui.lightline.inactive)]
let s:p.inactive.right = [HLElem(s:ui.lightline.inactive), HLElem(s:ui.lightline.inactive)]
let s:p.inactive.middle = [HLElem(s:ui.lightline.inactive)]

" Use different color in left most element for different modes
let s:p.insert.left[0] = HLElem(s:ui.lightline.insert)
let s:p.visual.left[0] = HLElem(s:ui.lightline.visual)
let s:p.select.left[0] = HLElem(s:ui.lightline.select)
let s:p.replace.left[0] = HLElem(s:ui.lightline.replace)

" Finally, set the lightline palette
let g:lightline#colorscheme#bolero#palette = s:p


" echom "Updating Bolero lightline theme"

" # *** DON'T ADD ANYTHING AFTER THIS SECTION ***
"
" Update lightline automagically when sourcing this file
if exists('g:loaded_lightline')
  let g:lightline.colorscheme = 'bolero'
  call lightline#colorscheme()
endif
