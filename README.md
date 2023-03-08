# 🛸 Space Chalk Theme for [Neo]Vim 🎨
A theme trying to combine a love of neon space colors and pastel chalk board colors.

<img src="./img/vim_example.png" style="width=800" alt="Screenshot of vim editing a python file with the nerdtree file browser plugin. It's showing off the Space Chalk Color Theme, featuring syntax highlight colors somewhere between pastel and neon on a very dark bluish purple background">

## Supported features
The author of this plugin actively uses neovim, but used to use vim exclusively.

### neovim
- [barbecue](https://github.com/utilyre/barbecue.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [scrollbar.nvim](https://github.com/petertriho/nvim-scrollbar)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - currently working on this
- [barbar](https://github.com/romgrk/barbar.nvim) - currently working on this

### vim
Supported only when someone raises an issue:
- [gitgutter]
- [NERDTree]
- [ALE]
- [airline]


## Installation

You should be able to install this fine with any vim/neovim plugin manager. (If you can't, let me know via an Issue or PR)

### vim-plug

```vim
Plug 'space-chalk/spacechalk.vim'
```

### packer

```lua
use {'space-chalk/spacechalk.vim'}
```

### manual

## vim

For the main scheme, you can just copy the [`colors/spacechalk.vim`](https://github.com/jessebot/space-chalk/blob/main/colors/spacechalk.vim) into your `~/.vim/colors` directory.

For the airline theme, you can copy the [`autoload/airline/themes/spacechalk.vim`](https://github.com/jessebot/spacechalk/blob/main/autoload/airline/themes/spacechalk.vim) into your `~/.vim/autoload/airline/themes` directory.

## Setup

### vim
To enable this color scheme for vim, set it in your `.vimrc`:

```vim
" If installed with vim-plug, you will want this after your vim-plug block
colorscheme spacechalk
```

This theme assumes gui colors. Add this to your `.vimrc` to enable true colors:

```vim
if has('nvim') || has('termguicolors')
  set termguicolors
endif
```

#### neovim (in lua)
You can of course use vimscript instead of lua, but for those new to neovim, this is what you want to do:

```lua
-- you will want this after packer has been loaded
vim.cmd.colorscheme("spacechalk")
```

### Airline
For airline, you'll need to add this to your `.vimrc`:

```vim
" use custome space chalk theme :)
let g:airline_theme='spacechalk'
```

### tmux
If you are running vim inside tmux:

```tmux
set-option -g default-terminal "xterm-256color"
set-option -ga terminal-overrides ',xterm-256color:Tc'
```

## Contributing and Troubleshooting

Contributions to get the syntax highlighting working everywhere are absolutely
welcome. If you're new to vim colorschemes, here's some tips!

### Get the current highlighting for a given variable/filetype
If you're already in a file in vim, and the highlighting doesn't look quite right,
but you're not sure what the variable is called, you can run the following command:

```vim
:highlight
```

That will give the exact `highlight` commands for all the variables, but unfortunately in vim, it is not searchable, so you'll have to page through it ;(

### Get the current syntax for a given variable/filetype
Open a python file in vim and then type the following:

```vim
:syntax list
```

That will give you all the syntax variable names and their colors as three `x`s, like:

```vim
pythonInclude  xxx from import
```

It may also be helpful to check out more about syntax/colors with:

```vim
:help syntax
```

Finally, useful tool for learning what highlight variables are called:
[vivify](http://bytefluent.com/vivify/)

[airline]: https://github.com/vim-airline/vim-airline
[ALE]: https://github.com/dense-analysis/ale
[gitgutter]: https://github.com/airblade/vim-gitgutter
[NERDTree]: https://github.com/preservim/nerdtree
