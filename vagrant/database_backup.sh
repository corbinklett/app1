#!/bin/bash

#create backup of current database, save in /database synced folder

DATABASEFOLDER="/database"

_NOW=$(date +"_%Y%m%d_%s")

BACKUPFILE="dump"$_NOW

#mysqldump and zip

mysqldump -u root -pmysqlpass smorg | gzip > $DATABASEFOLDER/$BACKUPFILE".sql.gz"