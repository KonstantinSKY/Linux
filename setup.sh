#!/bin/bash

echo Base Linux settings

echo My aliases on ...

ln -s $(dirname $(readlink -f $0))/my_aliases ~/my_aliases && echo ". ~/my_aliases" >> ~/.bashrc
