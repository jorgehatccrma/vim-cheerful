scriptencoding utf-8


" Define theme

let s:ui = {}
let s:ui.lightline = {}
let s:ui.lightline.lt1 = g:bolero_dark.lghtln.accent1
let s:ui.lightline.lt2 = g:bolero_dark.lghtln.accent2
let s:ui.lightline.rt1 = cheerful#flip(g:bolero_dark.ui.warn)
let s:ui.lightline.rt2 = deepcopy(s:ui.lightline.lt1)
let s:ui.lightline.mid  = deepcopy(s:ui.lightline.lt2)
let s:ui.lightline.inactive = g:bolero_dark.lghtln.inactive

" Generates highlighting list to be applied to a lightline element
function! HLElem(elem, ...)
  let fg = get(g:cheerful#colormap, get(a:elem, 'fg', 'White'), ['#FFFFFF', 15])
  let bg = get(g:cheerful#colormap, get(a:elem, 'bg', 'Black'), ['#000000', 0])
  return [fg[0], bg[0], fg[1], bg[1]] + a:000
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

let s:p.normal.ALEchecking = [HLElem(g:bolero_dark.ui.warn),]
let s:p.normal.ALEerror = [HLElem(g:bolero_dark.ui.error),]
let s:p.normal.ALEwarning = [HLElem(g:bolero_dark.ui.alert),]
let s:p.normal.ALEok = [HLElem(g:bolero_dark.ui.info),]

let s:p.insert = deepcopy(s:p.normal)
let s:p.visual = deepcopy(s:p.normal)
let s:p.select = deepcopy(s:p.normal)
let s:p.replace = deepcopy(s:p.normal)
let s:p.inactive = deepcopy(s:p.normal)

let s:p.inactive.left = [HLElem(s:ui.lightline.inactive), HLElem(s:ui.lightline.inactive)]
let s:p.inactive.right = [HLElem(s:ui.lightline.inactive), HLElem(s:ui.lightline.inactive)]
let s:p.inactive.middle = [HLElem(s:ui.lightline.inactive)]

" Use different color in left most element for different modes
let s:p.insert.left[0] = HLElem(g:bolero_dark.lghtln.insert)
let s:p.visual.left[0] = HLElem(g:bolero_dark.lghtln.visual)
let s:p.select.left[0] = HLElem(g:bolero_dark.lghtln.select)
let s:p.replace.left[0] = HLElem(g:bolero_dark.lghtln.replace)

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
