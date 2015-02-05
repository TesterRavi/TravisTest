#!/bin/bash
# load-fixture
# update permission before checking it in-- chmod ugo+x scripts/load-fixture.sh

# fail on error:

set -e

  mysql -e "DROP DATABASE IF EXISTS hautelook;"
  mysql -e 'CREATE DATABASE hautelook;'
  mysql -e "CREATE USER 'hautelook'@'%';" --user=root
  mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'hautelook'@'%';" --user=root
  mysql -e "FLUSH PRIVILEGES;" --user=root
  cat dump-files/hautelook* > dump-files/hautelook_dev.sql
  mysql -uroot hautelook < dump-files/hautelook_dev.sql
  mysql -uroot hautelook < scripts/post-deployment
