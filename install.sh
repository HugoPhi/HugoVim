#!/bin/bash

# install vim-plug 
if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://gh-proxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# check whether there is a .vimrc file and ~/.config/vim, if so, exit exceed 1 
if [ -f ~/.vimrc ] || [ -d ~/.config/vim ]; then
    echo "Error: ~/.vimrc or ~/.config/vim already exists, please remove it or back up it"
    exit 1
fi

# clone project to ~/.config/vim
git clone https://github.com/HugoPhi/HugoVim.git ~/.config/vim



