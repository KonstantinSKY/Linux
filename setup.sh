#!/bin/bash

echo Base Linux settings
CONF_DIR=$(dirname $(realpath "&0"))/config
INIT_VIM=$CONF_DIR/init.vim

echo My aliases on ...
ln -sf $CONF_DIR/my_aliases ~/my_aliases && echo ". ~/my_aliases" >> ~/.bashrc
ls -la ~/my_aliases
tail -3 ~/.bashrc

echo init.vim on ...
mkdir -p ~/.config/nvim/
ln -sf $INIT_VIM ~/.config/nvim/init.vim
ls -la ~/.config/nvim/init.vim
ln -sf $INIT_VIM ~/.vimrc
ls -la ~/.vimrc 
