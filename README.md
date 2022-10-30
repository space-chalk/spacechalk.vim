### Space Chalk Theme for Vim/Neovim
A theme trying to combine a love of neon space colors and pastel chalk board colors.

To enable this color scheme, set it in your `.vimrc`:

```vim
colorscheme spacechalk 
```

This theme assumes gui colors. Add this to your `.vimrc` to enable true colors:

```vim
if has('nvim') || has('termguicolors')
  set termguicolors
endif
```

### Installation

#### vim-plug ###
```
Plug 'jessebot/space_chalk', { 'as': 'spacechalk' }
```

### Screenshot ###

![Screenshot](./img/vim_example.png)

### Troubleshooting ###
 If you are running vim inside tmux:

```tmux
set-option -g default-terminal "xterm-256color"
set-option -ga terminal-overrides ',xterm-256color:Tc'
```

### Contributing ###

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
