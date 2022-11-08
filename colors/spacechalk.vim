" Vim Color File for Space Chalk theme :3
" Name:         spacechalk.vim
" Maintainer:   https://github.com/jessebot
" Last Change:  2022-10-29 12:11:06.0 +0200
" License:      GPLv3
" Notes: 🎨 Colours for this theme
"        --------------------------
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
"        #5ac4b9 teal (this color feels weird, maybe change it)
"        #5cc9fd blue
"        #5f87ff cornflower blue
"        #a3a8f8 medium purple
"
"        #232336 blueish black
"        #1d2652 navy blue
"        #2569aa darker blue
"        #585858 gray
"        #323232 grayish black

set background=dark
highlight clear

if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "spacechalk"

" ----------------------------- General Editor -------------------------------

" background of the whole editor and the plain text color
highlight Normal      guibg=#232336 guifg=#CAEAFF
highlight Cursor      guibg=#a3a8f8 guifg=Black
highlight CursorLine  cterm=NONE term=bold guibg=#323232
highlight CursorLineNr cterm=NONE term=bold guibg=#5f87ff guifg=#323232

" line number line and numbers
highlight LineNr      guibg=#323232 guifg=#5f87ff

" I typically use airline, so this isn't really applicable, open to changes
highlight StatusLine guibg=#5f87ff guifg=#323232

" for collapsed blocks/regions of code
highlight Folded      guibg=#3E3E3E guifg=#ffaff9

" visual mode highlighting of any kind
highlight Visual      guibg=#2569aa guifg=#a8fd57

" controls the column over 80 characters
highlight ColorColumn guibg=#323232

" for the split line between other windows, such as nerdtree
highlight VertSplit guibg=#a8fd57 guifg=#3E3E3E

" these are for little popup dropdown menus, for things like tab complete
highlight Pmenu    guibg=#1d2652 guifg=#5cc9fd
highlight PMenuSel guibg=#323232 guifg=#fdcd36

" Searching
highlight clear Search
highlight Search     guibg=#f7fb53 guifg=Black

" errors and warnings
highlight ErrorMsg guifg=#f2748a
highlight WarningMsg guifg=#f289f9

" -------------------- General Syntax Highlighting Colors --------------------
highlight Comment    guifg=#a3a8f8
highlight Constant   guifg=#f7fb53
highlight Keyword    guifg=#fdcd36
highlight String     guifg=#a8fd57
highlight Boolean    guifg=#5ac4b9
highlight Number     guifg=#f289f9
highlight Float      guifg=#f289f9
highlight Type       guifg=#5cc9fd
highlight Identifier guifg=#fdcd36
highlight Function   guifg=#5cc9fd
highlight PreProc    guifg=#5f87ff
highlight Todo       guifg=#fdcd36 guibg=#2569aa

" Invisible character colors
highlight NonText    guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


" ------------------------------ Python Colors -------------------------------
highlight pythonParameters      ctermfg=147 guifg=#AAAAFF
highlight pythonParam           ctermfg=175 guifg=#f289f9
highlight pythonBrackets        ctermfg=183 guifg=#ffaff9
highlight pythonLambdaExpr      ctermfg=105 guifg=#8787ff
highlight pythonBrackets        guifg=#5ac4b9


" ------------------------------ HTML Colors ---------------------------------
highlight link htmlTag     Type
highlight link htmlEndTag  htmlTag
highlight link htmlTagName htmlTag
highlight htmlH1 guifg=#f289f9
highlight htmlH2 guifg=#ffaff9

" ----------------------------- Markdown colors ------------------------------
highlight markdownCode guifg=#a8fd57 guibg=#232336
highlight link markdownCodeBlock markdownCode


" ------------------------------- Sass colors --------------------------------
highlight link sassMixin Keyword
highlight link sassMixing Constant

" ------------------------------- Git colors ---------------------------------
highlight gitcommitSelectedFile  guifg=#a8fd57
highlight gitcommitDiscardedFile guifg=#f2748a
highlight gitcommitWarning       guifg=#f2748a
highlight gitcommitBranch        guifg=#fdcd36
highlight gitcommitHeader        guifg=#5cc9fd

" -------------------------------- Gitgutter ---------------------------------
" change sign column color for git to be the same as line number background
highlight! link SignColumn LineNr
" change the colors back to what they should be when there are changes
highlight GitGutterAdd    guibg=#323232 guifg=#a8fd57 ctermfg=2
highlight GitGutterChange guibg=#323232 guifg=#f7fb53 ctermfg=3
highlight GitGutterDelete guibg=#323232 guifg=#f289f9 ctermfg=1

" ------------- NERDTree Git Plugin: Xuyuanp/nerdtree-git-plugin -------------
highlight NERDTreeGitStatusModified guifg=#fdcd36
highlight NERDTreeGitStatusStaged guifg=#a8fd57
highlight NERDTreeGitStatusRenamed guifg=#fdcd36
highlight NERDTreeGitStatusUntracked guifg=#f289f9
highlight NERDTreeGitStatusDirty guifg=#fdcd36
highlight NERDTreeGitStatusDeleted guifg=#f289f9
highlight NERDTreeGitStatusIgnored guifg=#fdcd36
highlight NERDTreeGitStatusClean guifg=#a8fd57

" ------------------------  NERDTree syntax colors ---------------------------
highlight Directory guifg=#5cc9fd
highlight NERDTreeCWD guifg=#f6f76a
highlight NERDTreeDirSlash guifg=#a8fd57
highlight NERDTreeClosable guifg=#fdcd36
highlight NERDTreeOpenable guifg=#f289f9

let g:WebDevIconsDefaultFolderSymbolColor = '5f87ff' " #5f87ff cornflower blue
let g:WebDevIconsDefaultFileSymbolColor = '5cc9fd' " #5cc9fd blue

" ---- NERDTree icons by extentions - set the default colors for filetypes
" all of these are pale purple: #a3a8f8
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['md'] = 'a3a8f8'
let g:NERDTreeExtensionHighlightColor['txt'] = 'a3a8f8'
let g:NERDTreeExtensionHighlightColor['pdf'] = 'a3a8f8'

" all of these are orange: #fdcd36
let g:NERDTreeExtensionHighlightColor['ini'] = 'fdcd36'
let g:NERDTreeExtensionHighlightColor['in'] = 'fdcd36'
let g:NERDTreeExtensionHighlightColor['yml'] = 'fdcd36'
let g:NERDTreeExtensionHighlightColor['yaml'] = 'fdcd36'
let g:NERDTreeExtensionHighlightColor['json'] = 'fdcd36'
let g:NERDTreeExtensionHighlightColor['cfg'] = 'fdcd36'

let g:NERDTreeExtensionHighlightColor['py'] = '5cc9fd' " #5cc9fd blue
let g:NERDTreeExtensionHighlightColor['sh'] = 'a8fd57' " #a8fd57 lime green


" -------------------------- dashboard for nvim ------------------------------
highlight DashboardHeader guifg=#fdcd36 ctermfg=3
highlight DashboardCenter guifg=#a8fd57 ctermfg=3
highlight DashboardShortcut guifg=#f289f9 ctermfg=3
highlight DashboardFooter guifg=#5f87ff ctermfg=3


" ------------------- ale colors for errors and warnings ---------------------
highlight ALEErrorSign guifg=#ff8d87 guibg=#323232
highlight ALEWarningSign guifg=#f289f9 guibg=#323232
