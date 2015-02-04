#!/bin/bash
# load-fixture
# update permission before checking it in-- chmod ugo+x scripts/load-fixture.sh

# fail on error:

#set -e

mysql -e 'create database hautelook;'
mysql -e "create user 'hautelook'@'%';" --user=root
mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'hautelook'@'%';" --user=root
mysql -e "FLUSH PRIVILEGES;" --user=root
cat hautelook* > hautelook_dev.sql
mysql -uroot hautelook < hautelook_dev.sql
mysql -uroot hautelook < postd
#mysql -e 'SET GLOBAL FOREIGN_KEY_CHECKS=1;'
