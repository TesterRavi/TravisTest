#!/bin/bash
# load-fixture
# update permission before checking it in-- chmod ugo+x scripts/load-fixture.sh

# fail on error:

set -e

  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  DIR=$(cd "$DIR/../dump-files/" && pwd)
  echo $DIR
  VARG="/vagrant//([^/]+)/"

  mysql -e "DROP DATABASE IF EXISTS hautelook;" --user=root
  mysql -e 'CREATE DATABASE hautelook;' --user=root

  # if [ [$DIR =~ $VARG ] ]; then

  # 	echo "in vagrant"

  #  else

   #	mysql -e "CREATE USER 'hautelook'@'%';" --user=root

  # fi

  mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'hautelook'@'%';" --user=root
  mysql -e "FLUSH PRIVILEGES;" --user=root
  cat $DIR/hautelook* > $DIR/hautelook_dev.sql
  mysql -uroot hautelook < $DIR/hautelook_dev.sql
  mysql -uroot hautelook < $DIR/post-deployment
  rm $DIR/hautelook_dev.sql
