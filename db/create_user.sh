################################################################################
# Script name : create_user.sh                   Date   : 04/04/2021           #
# Author      : Stan SKY                         E-mail : sky012877@gmail.com  #
# Description : create user for postgres                                       #
################################################################################

DEFAULT_USER="sky"

echo Creating new postgres user... 

if [ $1 ] 
then
    USER=$1
else
    echo "You did't add user name as argument..."
    echo "Enter new file name, default user is $DEFAULT_USER :"
    read USER 
fi
[[ ! $USER ]] && USER=$DEFAULT_USER

echo "Trying to create user: $USER" 

sudo createuser --interactive $USER


