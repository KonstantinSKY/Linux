#!/bin/bash

echo Base Linux settings
START_DIR=$(dirname $(realpath "&0"))
CONF_DIR=$START_DIR/config
TEMPL_DIR=$START_DIR/templates
INIT_VIM=$CONF_DIR/init.vim

echo My aliases on ...
ln -sf $CONF_DIR/my_aliases ~/my_aliases 
ls -la ~/my_aliases

echo Add sourse to .bashrc
[[ $(grep -c '. ~/my_aliases' ~/.bashrc) == 0 ]] && echo ". ~/my_aliases" >> ~/.bashrc
tail -3 ~/.bashrc

echo init.vim on ...
mkdir -p ~/.config/nvim/
ln -sf $INIT_VIM ~/.config/nvim/init.vim
ls -la ~/.config/nvim/init.vim
ln -sf $INIT_VIM ~/.vimrc
ls -la ~/.vimrc

echo Creating simlinks for templates...
[[ ! -d ~/.templates ]] && mkdir ~/.templates
ln -sf $TEMPL_DIR/sh_header.templ ~/.templates
ls -la ~/.templates
