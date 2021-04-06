#!/bin/bash

author="Stan SKY"
email="sky012877@gmail.com"

echo Creating  new executing file...
echo 'You also can add filename and descrption in first and second argument...' 
echo Or interactive now...

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

shift

if [ $2 ] 
then
    #shift
    descr="$*"
    echo "Description is $descr"
else
    echo You did not enter description as second argumen, Enter descrption:
    read descr
fi


#[[ -f ~/.templates/sh_header.templ ]] && cat ~/.templates/sh_header.templ > $file_name

#echo '#!/bin/bash' > $file_name

str1=$(printf '#%.0s' {1..80})  
format='# %-11s : %-32s %-6s : %-21s#\n'
format2='# %-11s : %-63s#\n'

echo $str1 > $file_name
printf "$format" "Script name" "$file_name" "Date" $(date +%m/%d/%Y) >> $file_name
printf "$format" "Author" "$author" "E-mail" "$email" >> $file_name  
printf "$format2" "Description" "$descr" >> $file_name
echo $str1 >> $file_name                                                                                  
[[ -f $file_name ]] && chmod u+x $file_name && nvim $file_name

#TODO add filename in $1
#TODO add for checking if file exist
