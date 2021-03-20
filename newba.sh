#!/bin/bash

# Creating  new executing bash file...
echo Enter new file name:
read file_name

echo '#!/bin/bash' > $file_name
chmod +x $file_name
nano $file_name

#TODO add filename in $1
#TODO add for checking if file exist







