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
[[ -d $file_name ]] && echo "$file_name" is exist as directory && exit
if [ -f $file_name ]
then
    echo "$file_name is exist, rename to $file_name.old"   
    mv $file_name  "$file_name.old" 
fi

if [ $2 ] 
then
    shift
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

[[ -f $file_name ]] && chmod u+x $file_name

[[ -f "$file_name.old" ]] && chmod u-x "$file_name.old" && cat "$file_name.old" >> $file_name && rm "$file_name.old"
nvim $file_name
