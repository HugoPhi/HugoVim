""""""""""""""""Plugins"""""""""""""""
""" install vim-plug manager: 
" > curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" >     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

let g:plug_url_format='https://mirror.ghproxy.com/https://github.com/%s.git'  " config proxy 

call plug#begin('~/.config/vim/share')
Plug 'skywind3000/vim-auto-popmenu'                                " Completion 
Plug 'skywind3000/vim-dict'                                        " dictionary for completion 
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }               " codeium
Plug 'octol/vim-cpp-enhanced-highlight'                            " cpp highlight enhance
Plug 'vim-syntastic/syntastic'                                     " syntax check

Plug 'Yggdroot/indentLine'                                         " indent line
Plug 'jbgutierrez/vim-better-comments'                             " better-comments

Plug 'tpope/vim-fugitive'                                          " git 
Plug 'airblade/vim-gitgutter'                                      " git

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                " fzf
Plug 'junegunn/fzf.vim'                                            " ~

Plug 'iamcco/markdown-preview.nvim'                                " markdown preview
Plug 'iamcco/mathjax-support-for-mkdp'                             " ~
"! please run  ":call mkdp#util#install()" before use "MarkdownPreview"

Plug 'tpope/vim-dadbod'                                            " database 
Plug 'kristijanhusak/vim-dadbod-ui'                                " database ui 

Plug 'ap/vim-css-color'                                            " show css color 
" Plug 'sainnhe/sonokai'                                             " sonokai
Plug 'cormacrelf/vim-colors-github'                                " github

Plug 'godlygeek/tabular'                                           " align text
""" usage: Just select what you what, and then input command: ":Tabularize/pattern", for example: ":Tabularize /," then the selected text will be aligned by ","

Plug 'preservim/nerdtree'                                          " file tree
Plug 'ryanoasis/vim-devicons'                                      " ~

call plug#end()


import '~/.config/vim/config/plugins/completion.vim'
import '~/.config/vim/config/plugins/indentLine.vim'
import '~/.config/vim/config/plugins/mkdp.vim'
import '~/.config/vim/config/plugins/dbui.vim'
import '~/.config/vim/config/plugins/nerdtree.vim'
import '~/.config/vim/config/plugins/syntatic.vim'

