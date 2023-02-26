" Vim Color File for Space Chalk theme :3
" Name:         spacechalk.vim
" Maintainer:   https://github.com/jessebot
" Last Change:  2022-10-29 12:11:06.0 +0200
" License:      GPLv3
" Notes: 🎨 Colours for this theme
"        --------------------------
"        #ffaff9 light pink
"        #f289f9 neon magenta
"        #d092fc pinkish purple
"        #f2748a pale dark red
"        #ff8d87 soft redish orange
"        #fdcd36 light orange
"        #f7fb53 bright yellow
"        #f6f76a soft yellow
"        #C1FF87 soft green
"        #a8fd57 lime green
"        #6DF2E5 cyan
"        #2ac3de dark cyan
"        #5cc9fd blue
"        #7dcfff ----------------- from tokyonight - not in use
"        #5f87ff cornflower blue
"        #7aa2f7 ----------------- from tokyonight - not in use
"        #a3a8f8 medium purple
"        #c0caf5 ----------------- from tokyonight - not in use
"        #bdd8ff off blueish white
"        #E8FBFF bright white
"
"        #232336 blueish black
"        #1d2652 navy blue
"        #2569aa darker blue
"        #3d59a1 ----------------- from tokyonight - not in use
"        #737aa2 bluish gray
"        #565f89 ----------------- from tokyonight - not in use
"        #414868 ----------------- from tokyonight - not in use
"        #3E3E3E darker gray
"        #323232 grayish black
"        #585858 gray

let g:colors_name = "spacechalk"

if exists("syntax_on")
   syntax reset
endif

set background=dark
highlight clear

" ----------------------------- "General Editor" -----------------------------

" background of the whole editor and the plain text color
highlight Normal      guibg=#232336 guifg=#bdd8ff

" line number line background and numbers
highlight LineNr      guibg=#323232 guifg=#5f87ff
highlight CursorLineNr cterm=NONE guibg=#5f87ff guifg=#323232

" for your cursor line: the line you're currently on
highlight Cursor      guibg=#a3a8f8 guifg=Black
highlight CursorLine  cterm=NONE guibg=#323232

" controls the column over 80 characters
highlight ColorColumn guibg=#323232

" for the split line between other windows, such as nerdtree
highlight VertSplit guibg=#7aa2f7 guifg=#3E3E3E

" I typically use airline, so this isn't really applicable, open to changes
highlight StatusLine guibg=#5f87ff guifg=#323232


" -------------------------- "Pmenu (Popup menu)" ----------------------------
"
" Normal item - e.g. popup dropdown menus for tab complete
highlight Pmenu      guibg=#1d2652 guifg=#5cc9fd
" Selected item.
highlight PMenuSel   guibg=#323232 guifg=#fdcd36
" Scrollbar.
highlight PmenuSbar  guifg=#3E3E3E
" Thumb of the scrollbar.
highlight PmenuThumb guifg=#5f87ff


" =========================== "Selection/Search" =============================
" Searching
highlight clear Search
highlight Search     guibg=#f7fb53 guifg=Black

" Visual mode [visual, v-line, v-block] highlighting of any kind
highlight Visual      guibg=#2569aa guifg=#a8fd57

" Folded code: collapsed blocks/regions of code
highlight Folded      guibg=#3E3E3E guifg=#ffaff9


" =========== "General Vim Defaults Syntax Highlighting Colors" ==============

" errors and warnings
highlight Error       guifg=#f2748a
highlight link ErrorMsg        Error
highlight link DiagnosticError Error
highlight link ALEErrorSign Error

" - ALE colors for errors and warnings
highlight Warn     guifg=#f289f9
highlight link WarningMsg Warn
highlight link DiagnosticWarn Warn
highlight link ALEWarningSign Warn

" regular messages
highlight MoreMsg guibg=#3E3E3E guifg=#a8fd57

" ---------- "built in Vim Spell Checker" ------------
" Word that is not recognized by the spellchecker.
highlight SpellBad guibg=#ffaff9 guifg=#4a4a59
highlight SpellCap guibg=#fdcd36 guifg=#4a4a59

" ----------- "Vim Programming defaults" -------------
highlight Constant             guifg=#6DF2E5
highlight Directory            guifg=#737aa2
highlight Property             guifg=#f7fb53
highlight PreProc              guifg=#5cc9fd
highlight Type                 guifg=#d092fc
highlight Identifier           guifg=#5cc9fd
highlight Function             guifg=#f7fb53 cterm=underline
highlight Include              guifg=#3d59a1
highlight Keyword              guifg=#5f87ff
highlight Operator             guifg=#fdcd36
highlight String               guifg=#a8fd57
highlight Boolean              guifg=#f7fb53
highlight Number               guifg=#a8fd57
highlight Float                guifg=#a8fd57
highlight Delimeter            guifg=#f289f9
highlight Comment              guifg=#a3a8f8 cterm=italic gui=italic
highlight Conceal              guifg=#737aa2

" comment, with the word TODO highlighted
highlight Todo       guifg=#fdcd36 guibg=#2569aa

" Invisible character colors
highlight NonText    guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" ------------------------------ Python Colors -------------------------------
if !has('nvim')
    " we have a custom syntax file for vim. in neovim, we rely on treesitter
    highlight pythonDottedName      guifg=#5cc9fd
    highlight pythonDot             guifg=#6DF2E5

    highlight pythonBuiltinObject   guifg=#ffaff9

    highlight pythonLambdaExpr      guifg=#8787ff

    " conditional operators like "==" or "!=" or "is" or "not"
    highlight pythonExtraOperator   guifg=#fdcd36

    " things like @option('--overwrite', '-O', is_flag=True)
    highlight pythonDecorator guifg=#f7fb53

    " python strings
    highlight pythonStrFormat     cterm=bold guifg=#6DF2E5
    highlight pythonStrFormatting cterm=bold guifg=#6DF2E5


    highlight pythonBrackets      ctermfg=183 guifg=#2ac3de
    highlight default link pythonKeywordOperator pythonExtraOperator
    highlight default link pythonDelimiter Delimeter
    highlight link pythonBoolean Boolean
endif

" --------------------------------- TOML -------------------------------------
highlight default link tomlTable Function
" highlight default link tomlTableArray Function
highlight tomlDotInKey guifg=#5fafff
highlight tomlBracket  guifg=#f289f9
highlight tomlCurly    guifg=#5fafff
highlight tomlComma    guifg=#f289f9
highlight tomlOperator guifg=#f7fb53

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

" ------------------------------- Git Commit ---------------------------------
"
highlight DiffText guifg=#fdcd36

highlight gitcommitSelectedFile  guifg=#a8fd57
highlight gitcommitDiscardedFile guifg=#f289f9
highlight gitcommitWarning       guifg=#f2748a
highlight gitcommitBranch        guifg=#f7fb53
highlight gitcommitHeader        guifg=#5cc9fd

if has('nvim')
    " change sign column color for git to be the same as line number background
    highlight SignColumn guibg=#232336
    " ------------------------ Git signs -------------------------------------
    highlight GitSignsAdd    guifg=#a8fd57 ctermfg=2
    " if a line is modified, the symbol in the gutter will be yellow
    highlight GitSignsChange guifg=#f7fb53 ctermfg=3
    " if a line is deleted, the symbol in the gutter will be pink
    highlight GitSignsDelete guifg=#f289f9 ctermfg=1

    " ---------------------------- treesitter --------------------------------
    " highlight @variable            guifg=#f7fb53
    highlight @field               guifg=#6DF2E5
    highlight @property            guifg=#f7fb53
    highlight @punctuation.bracket guifg=#f289f9
    highlight @constructor         guifg=#ffaff9

    " ---------------------- dashboard for nvim ------------------------------
    highlight DashboardHeader guifg=#fdcd36 ctermfg=3
    highlight DashboardFooter guifg=#585858 ctermfg=3


    " -------------------------- scrollbar.nvim ------------------------------
    highlight ScrollbarHandle          guibg=#3E3E3E
    highlight ScrollbarCursorHandle    guibg=#5f87ff

    highlight ScrollbarSearchHandle    guifg=#000000
    highlight ScrollbarSearch          guifg=#5cc9fd

    " this works on ALE provided error and warnings
    highlight ScrollbarErrorHandle     guifg=#f2748a guibg=#585858
    highlight link ScrollbarError ScrollbarErrorHandle

    highlight ScrollbarWarnHandle      guifg=#f289f9 guibg=#585858
    highlight link ScrollbarWarn WarningMsg

    highlight ScrollbarInfo guifg=#5cc9fd
endif


if !has('nvim')
    " -------------------------------- Gitgutter ---------------------------------
    " change sign column color for git to be the same as line number background
    highlight! link SignColumn LineNr
    " if a line is added, the symbol in the gutter will be green
    highlight GitGutterAdd    guibg=#323232 guifg=#a8fd57 ctermfg=2
    " if a line is modified, the symbol in the gutter will be yellow
    highlight GitGutterChange guibg=#323232 guifg=#f7fb53 ctermfg=3
    " if a line is deleted, the symbol in the gutter will be pink
    highlight GitGutterDelete guibg=#323232 guifg=#f289f9 ctermfg=1


    " ------------------------  NERDTree syntax colors ---------------------------
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

    " ---------- NERDTree Git Plugin: Xuyuanp/nerdtree-git-plugin -------------
    highlight NERDTreeGitStatusClean     guifg=#a8fd57
    highlight NERDTreeGitStatusStaged    guifg=#a8fd57
    highlight NERDTreeGitStatusModified  guifg=#fdcd36
    highlight NERDTreeGitStatusRenamed   guifg=#fdcd36
    highlight NERDTreeGitStatusDirty     guifg=#fdcd36
    highlight NERDTreeGitStatusIgnored   guifg=#fdcd36
    highlight NERDTreeGitStatusDeleted   guifg=#f289f9
    highlight NERDTreeGitStatusUntracked guifg=#f289f9
endif
