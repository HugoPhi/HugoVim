#!/bin/bash

# install vim-plug 
if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://gh-proxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi




