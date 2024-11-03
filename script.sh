#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [[ $(ls -a ~/ | grep -x .vimrc | wc -l) -eq '1' ]]
then
        mv .vimrc .vimrc.old
        echo "moved"
fi

curl -fLo ~/.vimrc https://raw.githubusercontent.com/jakub-2/vim_script/main/.vimrc

vim -c 'PlugInstall|q'
vim -c 'CocInstall coc-clangd|q'
