let g:airline#themes#space_chalk#palette = {}
"        #E8FBFF bright white
"        #CAEAFF chalky white
"        #ffaff9 light pink
"        #f289f9 neon magenta
"        #f2748a pale dark red
"        #ff8d87 soft redish orange
"        #fdcd36 light orange
"        #f7fb53 bright yellow
"        #f6f76a soft yellow
"        #a8fd57 lime green
"        #c2ff87 lighter green
"        #5f87ff cornflower blue
"        #3cafff blue
"        #a3a8f8 medium purple
"
"        #232336 blueish black
"        #1d2652 navy blue
"        #2569aa darker blue
"        #585858 gray
"        #323232 grayish black
"

" Color palette
let s:cterm_termbg    = 240  " Background for branch and file format blocks
let s:gui_termbg      = '#585858'
let s:cterm_termfg    = 178  " Foreground for branch and file format blocks
let s:gui_termfg      = '#c2ff87'

let s:cterm_termbg2   = 236  " Background for middle block
let s:gui_termbg2     = '#323232'
let s:cterm_termfg2   = 15   " Foreground for middle block
let s:gui_termfg2     = '#5f87ff'

let s:cterm_normalbg  = 69   " Background for normal mode and file position blocks
let s:gui_normalbg    = '#5F87FF'
let s:cterm_normalfg  = 236   " Foreground for normal mode and file position blocks
let s:gui_normalfg    = '#323232'

let s:cterm_insertbg  = 119   " Background for insert mode and file position blocks
let s:gui_insertbg    = '#a8fd57'
let s:cterm_insertfg  = 17   " Foreground for insert mode and file position blocks
let s:gui_insertfg    = '#1d2652'

let s:cterm_visualbg  = 32  " Background for visual mode and file position blocks
let s:gui_visualbg    = '#2569aa'
let s:cterm_visualfg  = 119   " Foreground for visual mode and file position blocks
let s:gui_visualfg    = '#a8fd57'

let s:cterm_replacebg = 213   " Background for replace mode and file position blocks
let s:gui_replacebg   = '#f289f9'
let s:cterm_replacefg = 236   " Foreground for replace mode and file position blocks
let s:gui_replacefg   = '#323232'

let s:cterm_alert     = 204   " Modified file alert color
let s:gui_alert       = '#fdcd36'

let s:cterm_inactivebg = 17 " Background for inactive mode
let s:gui_inactivebg   = '#232336'
let s:cterm_inactivefg = 240 " Foreground for inactive mode
let s:gui_inactivefg   = '#585858'

" this is for all warnings and errors in the final section
let s:WARNING = [ "#323232", "#f6f76a", 237, 226 ]
let s:ERROR = [ "#323232", "#f289f9", 15, 167 ]


" Branch and file format blocks - used in all sections
let s:BB = [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg]

" ----------------------------- Normal mode ----------------------------------
" Outside blocks in normal mode
let s:N1 = [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg]
" Middle block
let s:N2 = [s:gui_termfg2, s:gui_termbg2, s:cterm_normalbg, s:cterm_termbg2]

let g:airline#themes#space_chalk#palette.normal = airline#themes#generate_color_map(s:N1, s:BB, s:N2)
let g:airline#themes#space_chalk#palette.normal_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" ----------------------------- Insert mode ----------------------------------
" Outside blocks in insert mode
let s:I1 = [s:gui_insertfg, s:gui_insertbg, s:cterm_insertfg, s:cterm_insertbg]
" Middle block
let s:I2 = [s:gui_insertbg, s:gui_termbg2, s:cterm_insertbg, s:cterm_termbg2]

let g:airline#themes#space_chalk#palette.insert = airline#themes#generate_color_map(s:I1, s:BB, s:I2)
let g:airline#themes#space_chalk#palette.insert_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" ---------------------------- Replace mode ----------------------------------
" Outside blocks in replace mode
let s:R1 = [s:gui_replacefg, s:gui_replacebg, s:cterm_replacefg, s:cterm_replacebg]
" Middle block
let s:R2 = [s:gui_termfg, s:gui_termbg2, s:cterm_termfg, s:cterm_termbg2]

let g:airline#themes#space_chalk#palette.replace = airline#themes#generate_color_map(s:R1, s:BB, s:R2)
let g:airline#themes#space_chalk#palette.replace_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" ---------------------------- Visual mode -----------------------------------
" Outside blocks in visual mode
let s:V1 = [s:gui_visualfg, s:gui_visualbg, s:cterm_visualfg, s:cterm_visualbg]
" Middle block
let s:V2 = [s:gui_visualbg, s:gui_termbg2, s:cterm_visualbg, s:cterm_termbg2]

let g:airline#themes#space_chalk#palette.visual = airline#themes#generate_color_map(s:V1, s:BB, s:V2)
let g:airline#themes#space_chalk#palette.visual_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" ---------------------------- Inactive mode ---------------------------------
let s:IA1 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA2 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA3 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']

let g:airline#themes#space_chalk#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" --------------------- Warnings and errors section --------------------------
let g:airline#themes#space_chalk#palette.normal.airline_warning = s:WARNING
let g:airline#themes#space_chalk#palette.normal_modified.airline_warning = s:WARNING
let g:airline#themes#space_chalk#palette.insert.airline_warning = s:WARNING
let g:airline#themes#space_chalk#palette.insert_modified.airline_warning = s:WARNING
let g:airline#themes#space_chalk#palette.visual.airline_warning = s:WARNING
let g:airline#themes#space_chalk#palette.visual_modified.airline_warning = s:WARNING
let g:airline#themes#space_chalk#palette.replace.airline_warning = s:WARNING
let g:airline#themes#space_chalk#palette.replace_modified.airline_warning = s:WARNING
let g:airline#themes#space_chalk#palette.inactive.airline_warning = s:WARNING

let g:airline#themes#space_chalk#palette.normal.airline_error = s:ERROR
let g:airline#themes#space_chalk#palette.normal_modified.airline_error = s:ERROR
let g:airline#themes#space_chalk#palette.insert.airline_error = s:ERROR
let g:airline#themes#space_chalk#palette.insert_modified.airline_error = s:ERROR
let g:airline#themes#space_chalk#palette.replace.airline_error = s:ERROR
let g:airline#themes#space_chalk#palette.replace_modified.airline_error = s:ERROR
let g:airline#themes#space_chalk#palette.visual.airline_error = s:ERROR
let g:airline#themes#space_chalk#palette.visual_modified.airline_error = s:ERROR
let g:airline#themes#space_chalk#palette.inactive.airline_error = s:ERROR

" These are not set above, and could cause weird colors in the future, but not
" sure so just commenting them out for now.
" highlight airline_error_bold term=bold gui=bold guifg=#323232 guibg=#f289f9
" highlight airline_error_red guifg=#585858 guibg=#f289f9
" highlight airline_error_inactive_bold gui=bold guifg=#000000 guibg=#990000
" highlight airline_error_inactive_red guifg=#ff0000 guibg=#990000
