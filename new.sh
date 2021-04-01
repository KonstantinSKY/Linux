#!/bin/bash

# Creating  new executing bash file...

if [ $1 ] 
then
    file_name=$1
else
    echo Enter new file name:
    read file_name
fi

echo "Trying to create $file_name ..."
[[ ! $file_name ]] && echo No file name && exit
[[ -e $file_name ]] && echo The file or directory is exist && exit

[[ -f ~/.templates/sh_header.templ ]] && cat ~/.templates/sh_header.templ > $file_name
#echo continuin:wq
#[[ -f ~/.templates/sh_header.templ ]] && echo GOOD
#echo not GOOD

#echo '#!/bin/bash' > $file_name
 #printf '# Scrpt name : %s%40s Date :%s%40s\n' "nadf:e" "MM/DD/YY" '#'
  3 #printf '# Script name : %s%40s%s%20s#\n' "nadcdfddf:e" "Date : MM/DDsfdsf/YY"                     
format='# %-11s : %-32s %-6s : %-21s#\n'
format2='# %-11s : %-63s#\n'
printf '#\e[79b\n'
printf "$format" "Script name" "var_name"  "Date" "M/DDsfdsf/YY"
printf "$format" "Author" "Stan SKY" "E-mail" "sky012877@gmail.com"
printf "$format2" "Description" ""
printf '#\e[79b\n'

chmod u+x $file_name
nvim $file_name

#TODO add filename in $1
#TODO add for checking if file exist
