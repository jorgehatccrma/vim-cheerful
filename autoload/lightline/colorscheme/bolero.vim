scriptencoding utf-8

if g:colors_name == 'bolero_light'
  let s:cmap = g:bolero_light
else
  let s:cmap = g:bolero_dark
end


" Define theme

let s:ui = {}
let s:ui.lightline = {}
let s:ui.lightline.lt1 = s:cmap.lghtln.accent1
let s:ui.lightline.lt2 = s:cmap.lghtln.accent2
let s:ui.lightline.rt1 = bolero#config#flip(s:cmap.ui.warn)
let s:ui.lightline.rt2 = deepcopy(s:ui.lightline.lt1)
let s:ui.lightline.mid  = deepcopy(s:ui.lightline.lt2)
let s:ui.lightline.inactive = s:cmap.lghtln.inactive

" Generates highlighting list to be applied to a lightline element
function! HLElem(elem, ...)
  let fg = get(g:bolero#colormap, get(a:elem, 'fg', 'White'), ['#FFFFFF', 15])
  let bg = get(g:bolero#colormap, get(a:elem, 'bg', 'Black'), ['#000000', 0])
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

let s:p.normal.ALEchecking = [HLElem(s:cmap.ui.warn),]
let s:p.normal.ALEerror = [HLElem(s:cmap.ui.error),]
let s:p.normal.ALEwarning = [HLElem(s:cmap.ui.alert),]
let s:p.normal.ALEok = [HLElem(s:cmap.ui.info),]

let s:p.insert = deepcopy(s:p.normal)
let s:p.visual = deepcopy(s:p.normal)
let s:p.select = deepcopy(s:p.normal)
let s:p.replace = deepcopy(s:p.normal)
let s:p.inactive = deepcopy(s:p.normal)

let s:p.inactive.left = [HLElem(s:ui.lightline.inactive), HLElem(s:ui.lightline.inactive)]
let s:p.inactive.right = [HLElem(s:ui.lightline.inactive), HLElem(s:ui.lightline.inactive)]
let s:p.inactive.middle = [HLElem(s:ui.lightline.inactive)]

" Use different color in left most element for different modes
let s:p.insert.left[0] = HLElem(s:cmap.lghtln.insert)
let s:p.visual.left[0] = HLElem(s:cmap.lghtln.visual)
let s:p.select.left[0] = HLElem(s:cmap.lghtln.select)
let s:p.replace.left[0] = HLElem(s:cmap.lghtln.replace)

" # *** DON'T ADD ANYTHING AFTER THIS SECTION ***

" Finally, set the lightline palette
let g:lightline#colorscheme#bolero#palette = s:p

" Update lightline automagically when sourcing this file
if exists('g:loaded_lightline')
  let g:lightline.colorscheme = 'bolero'

  " FixMe: Not sure why this is necessary (shouldn't the existance of
  " `g:loaded_lightline` be enough?
  if &rtp =~ 'lightline'
    call lightline#update()
  else
    echoerr "'lightline#colorscheme()' not found."
    echom "Skipping application of cheerfully(bolero) palette"
  endif
endif

