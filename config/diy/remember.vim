""""""""""Remember Last Edit""""""""""
let mapleader=" "

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif



