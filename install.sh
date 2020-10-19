#!/bin/bash

# for now this script assumes that it is run by the user which whants to 
# use the dotfiles

# get vim color scheme
mkdir -p ~/.vim/colors
wget -O ~/.vim/colors/monokai.vim https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim 

for i in home/*; do
    if [ -f "$i" ]; then
        ln -s $(pwd)/$i ~/.$(basename $i)
        echo "ln -s $(pwd)/$i ~/.$(basename $i)"
    fi
done

