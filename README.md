# 🛸 Space Chalk Theme for Vim/NeoVim 🎨
A theme trying to combine a love of neon space colors and pastel chalk board colors.

<img src="./img/vim_example.png" style="width=800" alt="Space Chalk Color Theme for vim/neovim, freaturing colors somewhere between pastel and neon on a very dark bluish purple">

This theme also includes support for:
- [airline]
- [gitgutter]
- [NERDTree]

## Installation

You should be able to install this fine with any vim/neovim plugin manager.

### vim-plug

```
Plug 'jessebot/spacechalk', { 'as': 'spacechalk', 'do': ':colorscheme spacechalk' }
```

### manual

## vim

For the main scheme, you can just copy the [`colors/spacechalk.vim`](https://github.com/jessebot/space-chalk/blob/main/colors/spacechalk.vim) into your `~/.vim/colors` directory.

For the airline theme, you can copy the [`autoload/airline/themes/spacechalk.vim`](https://github.com/jessebot/spacechalk/blob/main/autoload/airline/themes/spacechalk.vim) into your `~/.vim/autoload/airline/themes` directory.

## Setup
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

Use :help command to check vim help on what variables are called, e.g.
Open a python file in vim and then type the following:

```vim
:syntax list
```

That will give you all the syntax variable names and their colors as
three `x`s, like: `pythonInclude  xxx from import`

It may also be helpful to check out more about syntax/colors with:

```vim
:help syntax
```

Finally, useful tool for learning what highlight variables are called:
[vivify](http://bytefluent.com/vivify/)

[airline]: https://github.com/vim-airline/vim-airline
[gitgutter]: https://github.com/airblade/vim-gitgutter
[NERDTree]: https://github.com/preservim/nerdtree
