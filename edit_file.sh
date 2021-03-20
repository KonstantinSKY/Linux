#!/bin/bash
echo Renew my aliases in .bashrc

LineNum=$(grep -n "#my aliases" ~/.bashrc | head -n1 | cut -d: -f1)
echo $LineNum

sed -i "$LineNum,$ d" ~/.bashrc;

cat ~/my_aliases >> ~/.bashrc




