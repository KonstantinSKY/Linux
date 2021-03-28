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
echo continuin:wq
#[[ -f ~/.templates/sh_header.templ ]] && echo GOOD
#echo not GOOD

#echo '#!/bin/bash' > $file_name
chmod u+x $file_name
nvim $file_name

#TODO add filename in $1
#TODO add for checking if file exist
