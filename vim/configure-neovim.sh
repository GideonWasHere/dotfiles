#!/bin/bash

# Install vim config
echo 'Installing init.vim'
[ ! -d ~/.config/nvim ] && mkdir -vp ~/.config/nvim 
cp init.vim ~/.config/nvim/init.vim

# Get vim-plug
echo 'Installing vim-plug'
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -vp ~/.local/share/nvim/site/plugged

echo 'Done. Open nvim and run :PlugInstall to install plugins'
