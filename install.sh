#!/bin/bash

#Installing Linux programm

echo Installing vim-plug...
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo Installing pyvim...   #for youCOmpleteMe
python3 -m pip install --user --upgrade pynvim


