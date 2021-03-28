#!/bin/bash

# Creating  new executing bash file...

if [$1] 
then
    file_name=$1
else
    echo Enter new file name:
    read file_name

echo '#!/bin/bash' > $file_name
chmod u+x $file_name
nvim $file_name

#TODO add filename in $1
#TODO add for checking if file exist
