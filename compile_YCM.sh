#!/bin/bash

############################################################################
# Script name :                              Date   :                      #     
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #                                 
############################################################################                             

YCM_PATH=~/.config/nvim/plugged/YouCompleteMe/
cd ~/.config/nvim/plugged/YouCompleteMe/
pwd
if [ -d "$YCM_PATH" ]
then 
    python3 install.py --all
else 
    echo "Can't find directory $YCM_PATH"
fi

