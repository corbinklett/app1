#!/bin/bash

#Unzips database and runs SQL files to build database

mysql -u root -pmysqlpass --execute="Create database if not exists smorg"

gzip -d /database/db.sql.gz

mysql -u root -pmysqlpass smorg < /database/db.sql

gzip /database/db.sql
