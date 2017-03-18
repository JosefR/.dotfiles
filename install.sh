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

QTCREATOR_CONFIG_DIR=".config/QtProject/qtcreator"

if [ ! -d "~/${QTCREATOR_CONFIG_DIR}/styles" ]; then
    echo "create directory '${QTCREATOR_CONFIG_DIR}/styles'"
    mkdir -p "${QTCREATOR_CONFIG_DIR}/styles"
fi

# QtCreator config
ln -s $(pwd)/home/${QTCREATOR_CONFIG_DIR}/styles/qtcreator-colorscheme.xml ~/${QTCREATOR_CONFIG_DIR}/styles/qtcreator-colorscheme.xml
