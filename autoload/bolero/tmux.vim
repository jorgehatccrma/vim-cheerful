let s:base_color = 'Brown'

" Sometimes vim/tmux combo gets confused with upper case HEX colors, so we
" lowercase them
let s:canvas = '\' . tolower(g:bolero#colormap['Black'][0])
let s:main_bg = '\' . tolower(g:bolero#colormap[s:base_color . " 900"][0])
let s:main_fg = '\' . tolower(g:bolero#colormap[s:base_color . " 100"][0])
let s:scndry_fg = '\' . tolower(g:bolero#colormap[s:base_color . " 50"][0])
let s:scndry_bg = '\' . tolower(g:bolero#colormap[s:base_color . " 700"][0])
let s:accnt_1 = '\' . tolower(g:bolero#colormap[s:base_color . " 300"][0])
" TODO: read the following colors from the bolero palette
let s:accnt_2 = '\' . tolower(g:bolero#colormap['Red A400'][0])
let s:mode_fg = '\' . tolower(g:bolero#colormap['Pink 50'][0])
let s:mode_bg = '\' . tolower(g:bolero#colormap['Pink A400'][0])

let s:CFG1 = '\#[fg=' . s:main_fg . ',bg=' . s:main_bg . ']'
let s:CFG1_b = '\#[fg=' . s:main_fg . ',bg=' . s:main_bg . ',bold]'
let s:CFG1_r = '\#[bg=' . s:main_fg . ',fg=' . s:main_bg . ']'
let s:CFG1_rb = '\#[bg=' . s:main_fg . ',fg=' . s:main_bg . ',bold]'

let s:CFG2 = '\#[fg=' . s:scndry_fg . ',bg=' . s:scndry_bg . ']'
let s:CFG2_b = '\#[fg=' . s:scndry_fg . ',bg=' . s:scndry_bg . ',bold]'
let s:CFG2_r = '\#[bg=' . s:scndry_fg . ',fg=' . s:scndry_bg . ']'
let s:CFG2_rb = '\#[bg=' . s:scndry_fg . ',fg=' . s:scndry_bg . ',bold]'

let s:_1To2 = '\#[fg=' . s:main_bg . ',bg=' . s:scndry_bg . ']'
let s:_1rTo2 = '\#[fg=' . s:main_fg . ',bg=' . s:scndry_bg . ']'
let s:_1To2r = '\#[fg=' . s:main_bg . ',bg=' . s:scndry_fg . ']'
let s:_1rTo2r = '\#[fg=' . s:main_fg . ',bg=' . s:scndry_fg . ']'

let s:_2To1 = '\#[bg=' . s:main_bg . ',fg=' . s:scndry_bg . ']'
let s:_2rTo1 = '\#[bg=' . s:main_fg . ',fg=' . s:scndry_bg . ']'
let s:_2To1r = '\#[bg=' . s:main_bg . ',fg=' . s:scndry_fg . ']'
let s:_2rTo1r = '\#[bg=' . s:main_fg . ',fg=' . s:scndry_fg . ']'


function! bolero#tmux#apply(cmd, value)
  let l:cmd = "!tmux " . a:cmd . " " . a:value
  " echom "--------------------------------"
  " echom a:cmd
  " echom a:value
  " echom l:cmd
  silent exec l:cmd
endfunction


" panes
call bolero#tmux#apply("set -g pane-border-bg ", "\\" . s:canvas)
call bolero#tmux#apply("set -g pane-border-fg ", "\\" . s:main_bg)
call bolero#tmux#apply("set -g pane-active-border-fg ", "\\" . s:main_fg)
call bolero#tmux#apply("set -g pane-active-border-bg ", "\\" . s:canvas)

"# Status bar design
" status line
call bolero#tmux#apply("set -g status-justify", "centre")
call bolero#tmux#apply("set -g status-bg ", "\\" . s:main_bg)
call bolero#tmux#apply("set -g status-fg ", "\\" . s:main_fg)

" messaging
call bolero#tmux#apply("set -g message-fg ", "\\" . s:accnt_1)
call bolero#tmux#apply("set -g message-bg ", "\\" . s:canvas)
call bolero#tmux#apply("set -g message-command-fg ", "\\" . s:accnt_2)
call bolero#tmux#apply("set -g message-command-bg ", "\\" . s:canvas)

"window mode
call bolero#tmux#apply("setw -g mode-bg ", "\\" . s:mode_bg)
call bolero#tmux#apply("setw -g mode-fg ", "\\" . s:mode_fg)

call bolero#tmux#apply("set-window-option -g window-status-bg ", "\\" . s:main_bg)
call bolero#tmux#apply("set-window-option -g window-status-fg ", "\\" . s:main_fg)
call bolero#tmux#apply("set-window-option -g window-status-current-bg ", "\\" . s:main_fg)
call bolero#tmux#apply("set-window-option -g window-status-current-fg ", "\\" . s:main_bg)
call bolero#tmux#apply("set-window-option -g window-status-current-attr", "bold")

" Refresh status line every 2 seconds
call bolero#tmux#apply("set -g status-interval", "2")

" Start window and pane indices at 1.
call bolero#tmux#apply("set -g base-index", "1")
call bolero#tmux#apply("set -g pane-base-index", "1")

" length of tmux status line
call bolero#tmux#apply("set -g status-left-length", " 30")
call bolero#tmux#apply("set -g status-right-length", "150")

" set window list format
call bolero#tmux#apply("set -g status-justify", "centre")
call bolero#tmux#apply("setw -g window-status-format", '"\#I:\#W"')
call bolero#tmux#apply("setw -g window-status-current-format ",'" \#I:\#W [\#F] "')




" Set the left and right status

" Left status
" let s:left = "'" . s:CFG1_r . ' \#h' . s:_1rTo2 . ' ' . s:CFG2_b . '\#S ' . s:_2To1 . '' . s:CFG1 . "'"
let s:left = s:CFG1_r
let s:left = s:left . ' \#h'
let s:left = s:left . s:_1rTo2 . ' ' . s:CFG2_b
let s:left = s:left . '\#S '
let s:left = s:left . s:_2To1 . '' . s:CFG1
let s:left = "'" . s:left . "'"
" echom s:left
" call bolero#tmux#apply("display-message ", s:left)
call bolero#tmux#apply("set -g status-left ", s:left)

" Right status
" For the right status, the transitions neer to be flip (e.g use _1To2 if CFG1
" is on the right of the transition and CFG2 is at the left)
" let s:right = "'" . s:_2To1 . '' . s:CFG2 . '\#(tmux-spotify-info)\#(tmux-itunes-info) ' . s:_1rTo2 . '' . s:CFG1_r . ' \#(batteryleft.sh) │ \%b \%d \%H:\%M ' . "'"
let s:right = s:_2To1 . '' . s:CFG2
let s:right = s:right . '\#(tmux-spotify-info)\#(tmux-itunes-info)'
let s:right = s:right . s:_1rTo2 . '' . s:CFG1_r
let s:right = s:right . ' \#(batteryleft.sh) │ \%b \%d \%H:\%M '
let s:right =  "'" . s:right . "'"
" echom s:right
" call bolero#tmux#apply("display-message ", s:right)
call bolero#tmux#apply("set -g status-right ", s:right)


