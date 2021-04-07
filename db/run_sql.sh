################################################################################
# Script name : run_sql.sh                       Date   : 04/06/2021           #
# Author      : Stan SKY                         E-mail : sky012877@gmail.com  #
# Description : Run any sql file                                               #
################################################################################

USER="sky"
DATABASE="my_db"


echo Runnung psql_init_db file...
echo 'You also can add filename as first and second argument...' 
echo Or interactive now...
 
if [ $1 ] 
then                                                                                                               
    file_name=$1
else

echo Enter new file name:
    read file_name
fi
 
echo "Trying to run $file_name ..."
[[ ! $file_name ]] && echo No file name && exit


psql -U $USER -d $DATABASE -a -f $file_name    
