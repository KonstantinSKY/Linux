################################################################################
# Script name : create_db.sh                     Date   : 04/04/2021           #
# Author      : Stan SKY                         E-mail : sky012877@gmail.com  #
# Description : Create new Database in postgresSQL                             #
################################################################################

echo 'Creating new database...'
sudo -i -u postgres psql -c '\l+'  

if [ $1 ]   
then  
    DB_NAME=$1  
else  
    echo "You did't add database name as argument..."  
    echo "Enter database name :"  
    read DB_NAME   
fi  

[[ ! $DB_NAME ]] && echo "No database name. Empty. " && exit

sudo -i -u postgres psql -c "CREATE DATABASE $DB_NAME"

echo Checking...
sudo -i -u postgres psql -c '\l+'  
echo Done!!
