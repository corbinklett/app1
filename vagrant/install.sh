#!/bin/bash

echo "---------------------------------------------------"
echo "Setting up a new dev machine!"
echo "Installing LAMP"
echo "---------------------------------------------------"

sudo apt-get update && sudo apt-get install lamp-server^

#This if statement may not be working correctly... I think it adds index.php regardless
# if [ "grep 'DirectoryIndex' /etc/apache2/mods-enabled/dir.conf | awk -F' ' '{ print $2 }'" != "index.php" ]; then
# 	sed -i 's/DirectoryIndex /DirectoryIndex index.php /' /etc/apache2/mods-enabled/dir.conf
# fi

sudo service apache2 restart

echo "----------------------------------------------------"
echo "LAMP set up. Loading database..."
echo "----------------------------------------------------"

bash /vagrant/database_up.sh

echo "----------------------------------------------------"
echo "Database loaded."
echo "Database commands are /vagrant/database_backup.sh and /vagrant/database_restore.sh"
echo "----------------------------------------------------"