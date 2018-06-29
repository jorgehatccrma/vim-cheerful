let s:base_color_name = g:bolero#maincolor

"------------------------------------------------------------------------------
" Theme color specifications
"
" Color palette to use from the color specified by `s:base_color_name`
"------------------------------------------------------------------------------

" Sometimes vim/tmux combo gets confused with upper case HEX colors, so we
" lowercase them for safety
let s:canvas = tolower(g:bolero#colormap['Black'][0])
let s:main_bg = tolower(g:bolero#colormap[s:base_color_name . " 900"][0])
let s:main_fg = tolower(g:bolero#colormap[s:base_color_name . " 50"][0])
let s:scndry_fg = tolower(g:bolero#colormap[s:base_color_name . " 100"][0])
let s:scndry_bg = tolower(g:bolero#colormap[s:base_color_name . " 600"][0])
let s:accnt_1 = tolower(g:bolero#colormap[s:base_color_name . " 300"][0])

" TODO: read the following colors from the bolero palette
let s:accnt_2 = tolower(g:bolero#colormap['Red A400'][0])
let s:mode_fg = tolower(g:bolero#colormap['Pink 50'][0])
let s:mode_bg = tolower(g:bolero#colormap['Pink A400'][0])


" Main color configs (bg & fg pairs)

let s:CFG1 = '#[fg=' . s:main_fg . ',bg=' . s:main_bg . ']'
let s:CFG1_b = '#[fg=' . s:main_fg . ',bg=' . s:main_bg . ',bold]'
let s:CFG1_r = '#[bg=' . s:main_fg . ',fg=' . s:main_bg . ']'
let s:CFG1_rb = '#[bg=' . s:main_fg . ',fg=' . s:main_bg . ',bold]'

let s:CFG2 = '#[fg=' . s:scndry_fg . ',bg=' . s:scndry_bg . ']'
let s:CFG2_b = '#[fg=' . s:scndry_fg . ',bg=' . s:scndry_bg . ',bold]'
let s:CFG2_r = '#[bg=' . s:scndry_fg . ',fg=' . s:scndry_bg . ']'
let s:CFG2_rb = '#[bg=' . s:scndry_fg . ',fg=' . s:scndry_bg . ',bold]'


" Color configs to use in transitions (e.g. '')
" The name refers to the direction in which the tranision symbol points to
let s:_1To2 = '#[fg=' . s:main_bg . ',bg=' . s:scndry_bg . ']'
let s:_1rTo2 = '#[fg=' . s:main_fg . ',bg=' . s:scndry_bg . ']'
let s:_1To2r = '#[fg=' . s:main_bg . ',bg=' . s:scndry_fg . ']'
let s:_1rTo2r = '#[fg=' . s:main_fg . ',bg=' . s:scndry_fg . ']'

let s:_2To1 = '#[bg=' . s:main_bg . ',fg=' . s:scndry_bg . ']'
let s:_2rTo1 = '#[bg=' . s:main_fg . ',fg=' . s:scndry_bg . ']'
let s:_2To1r = '#[bg=' . s:main_bg . ',fg=' . s:scndry_fg . ']'
let s:_2rTo1r = '#[bg=' . s:main_fg . ',fg=' . s:scndry_fg . ']'

let s:_1To1 = '#[bg=' . s:main_bg . ',fg=' . s:main_bg . ']'
let s:_1rTo1 = '#[bg=' . s:main_fg . ',fg=' . s:main_bg . ']'
let s:_1To1r = '#[bg=' . s:main_bg . ',fg=' . s:main_fg . ']'
let s:_1rTo1r = '#[bg=' . s:main_fg . ',fg=' . s:main_fg . ']'

let s:_2To2 = '#[fg=' . s:scndry_bg . ',bg=' . s:scndry_bg . ']'
let s:_2rTo2 = '#[fg=' . s:scndry_fg . ',bg=' . s:scndry_bg . ']'
let s:_2To2r = '#[fg=' . s:scndry_bg . ',bg=' . s:scndry_fg . ']'
let s:_2rTo2r = '#[fg=' . s:scndry_fg . ',bg=' . s:scndry_fg . ']'


"------------------------------------------------------------------------------
" Left and right sections definition (content and color)
"------------------------------------------------------------------------------

" Left side definition
let s:left = s:CFG1_r
let s:left = s:left . '#h'
let s:left = s:left . s:_1rTo2 . ' ' . s:CFG2_b
let s:left = s:left . '#S '
let s:left = s:left . s:_2To1 . '' . s:CFG1
let s:left = "'" . s:left . "'"
" echom s:left

" Right side definition
" For the right status, the transitions neer to be flip (e.g use _1To2 if CFG1
" is on the right of the transition and CFG2 is at the left)
let s:right = s:_2To1 . '' . s:CFG2
let s:right = s:right . ' #(tmux-spotify-info)#(tmux-itunes-info) '
let s:right = s:right . s:_1rTo2 . '' . s:CFG1_r
let s:right = s:right . ' #(batteryleft.sh) │ %b %d %H:%M '
let s:right =  "'" . s:right . "'"
" echom s:right


"------------------------------------------------------------------------------
" Tmux conf commands
"------------------------------------------------------------------------------

" panes
let s:commands = []
call add(s:commands, "set -g pane-border-bg '" . s:canvas . "'")
call add(s:commands, "set -g pane-border-fg '" . s:main_bg . "'")
call add(s:commands, "set -g pane-active-border-fg '" . s:main_fg . "'")
call add(s:commands, "set -g pane-active-border-bg '" . s:canvas . "'")

" Status bar design
call add(s:commands, "set -g status-justify centre")
call add(s:commands, "set -g status-bg '" . s:main_bg . "'")
call add(s:commands, "set -g status-fg '" . s:main_fg . "'")
call add(s:commands, "setw -g window-status-format '\#I:\#W'")
call add(s:commands, "setw -g window-status-current-format ' \#I:\#W [\#F] '")


" messaging
call add(s:commands, "set -g message-fg '" . s:accnt_1 . "'")
call add(s:commands, "set -g message-bg '" . s:canvas . "'")
call add(s:commands, "set -g message-command-fg '" . s:accnt_2 . "'")
call add(s:commands, "set -g message-command-bg '" . s:canvas . "'")

" window mode
call add(s:commands, "setw -g mode-bg '" . s:mode_bg . "'")
call add(s:commands, "setw -g mode-fg '" . s:mode_fg . "'")

call add(s:commands, "set-window-option -g window-status-bg '" . s:main_bg . "'")
call add(s:commands, "set-window-option -g window-status-fg '" . s:main_fg . "'")
call add(s:commands, "set-window-option -g window-status-current-bg '" . s:scndry_fg . "'")
call add(s:commands, "set-window-option -g window-status-current-fg '" . s:main_bg . "'")
call add(s:commands, "set-window-option -g window-status-current-attr bold")

" Refresh status line every 2 seconds
call add(s:commands, "set -g status-interval 2")

" Start window and pane indices at 1.
call add(s:commands, "set -g base-index 1")
call add(s:commands, "set -g pane-base-index 1")

" length of tmux status line
call add(s:commands, "set -g status-left-length  30")
call add(s:commands, "set -g status-right-length 150")

" Set the left and right status
call add(s:commands, "set -g status-left " . s:left)
call add(s:commands, "set -g status-right " . s:right)


"------------------------------------------------------------------------------
" Execute the commands
"
" This is done efficiently by writing to a temp file and then running a single
" tmux command
"------------------------------------------------------------------------------

let s:x = tempname()
call writefile(s:commands, s:x)
call execute(":!tmux source-file " . s:x)

