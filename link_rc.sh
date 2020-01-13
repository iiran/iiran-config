#!/bin/sh

current=`pwd`
zshrc_path=$current/.zshrc
vimrc_path=$current/.vimrc
ln -s $zshrc_path ~/.zshrc
ln -s $vimrc_path ~/.vimrc
