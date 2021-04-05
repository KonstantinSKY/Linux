################################################################################
# Script name : create_user.sh                   Date   : 04/04/2021           #
# Author      : Stan SKY                         E-mail : sky012877@gmail.com  #
# Description : create user for postgres                                       #
################################################################################

DEFAULT_USER="sky"

echo 'Creating new postgres ROLE (user)...'
sudo -i -u postgres psql -c '\du'

if [ $1 ] 
then
    USER=$1
else
    echo "You did't add user name as argument..."
    echo "Enter new user name, default user is $DEFAULT_USER :"
    read USER 
fi
[[ ! $USER ]] && USER=$DEFAULT_USER

echo "Trying to create user: $USER" 
echo "Enter password:"
read PASSWD

sudo -i -u postgres psql -c "CREATE ROLE $USER WITH LOGIN PASSWORD '$PASSWD'"
sudo -i -u postgres psql -c '\du'

echo "Checking your db from new user: $USER"
psql postgres -c '\l'

echo Done!


