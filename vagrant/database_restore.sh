#!/bin/bash

#Allow user to select from a list of DB backups to restore from

mysql -u root -pmysqlpass --execute="Create database if not exists smorg"

# cd /database

select option in $(ls /database);
do

gzip -d /database/$option

file=$(echo $option | sed 's/.sql.gz/.sql/')

mysql -u root -pmysqlpass smorg < /database/$file

gzip /database/$file
exit
done