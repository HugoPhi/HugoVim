""" can not change rank randomly

""" set leader 
let mapleader = " "

""""""""""""""Settings""""""""""""""""
syntax on
filetype on 
set nu
set rnu
set cindent
set nobackup
set noundofile
set termguicolors
set autoread
set showcmd
set backspace=2
set wildmenu
set cmdheight=2
set scrolloff=5
set hlsearch
set incsearch
set ignorecase
set fillchars+=vert:│
set nofoldenable
set autochdir
set noeb
set vb
set vb t_vb=
set textwidth=1000000
autocmd BufNew,BufEnter * exec ":set nocursorline"
autocmd BufNew,BufEnter * exec ":so ~/.vimrc"
""""""""""""""""""""""""""""""""""""""

import '~/.config/vim/config/plugins.vim'
import '~/.config/vim/config/diy.vim'
import '~/.config/vim/config/colors.vim'
import '~/.config/vim/config/keymaps.vim'

