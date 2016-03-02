# .dotfiles
My configuration file repository.

## Prepare Vundle Plugin for vim:
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Install the dotfiles
git clone https://github.com/JosefR/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh

## install the plugins
vim (ignore warning abput missing color scheme)
:PluginInstall
