#!/bin/sh

current=`pwd`
zshrc_path=$current/.zshrc
vimrc_path=$current/.vimrc
vscode_setting_path=$current/settings.json
ln -s $zshrc_path ~/.zshrc
ln -s $vimrc_path ~/.vimrc
ln -s $vscode_setting_path ~/Library/Application Support/Code/User/settings.json
