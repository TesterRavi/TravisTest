#!/bin/bash
# load-fixture
# update permission before checking it in-- chmod ugo+x scripts/load-fixture.sh

# fail on error:

set -e

if ! mysql -u root -e 'use hautelook'; then
  mysql -e 'create database hautelook;'
  mysql -e "create user 'hautelook'@'%';" --user=root
  mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'hautelook'@'%';" --user=root
  mysql -e "FLUSH PRIVILEGES;" --user=root
  cat dump-files/hautelook* > dump-files/hautelook_dev.sql
  mysql -uroot hautelook < dump-files/hautelook_dev.sql
  mysql -uroot hautelook < /scripts/post-deployment

else

  cat /vagrant/sql_export/hautelook* > /vagrant/sql_export/hautelook_dev.sql
  mysql -uroot hautelook < /vagrant/sql_export/hautelook_dev.sql
  mysql -uroot hautelook < /vagrant/sql_export/scripts/post-deployment
  rm /vagrant/sql_export/hautelook_dev.sql

fi
