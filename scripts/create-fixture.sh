#!/bin/bash
# load-fixture
# update permission before checking it in-- chmod ugo+x scripts/load-fixture.sh

#mysqldump -uroot -p hautelook --routines | gzip > /vagrant/sql_export/hautelook_dev.sql.gz

set -e

  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  DIR=$(cd "$DIR/../dump-files/" && pwd)
  echo $DIR

  mysqldump -uroot hautelook --routines  > $DIR/hautelook_dev.sql
  split --bytes=10M  $DIR/hautelook_dev.sql $DIR/hautelook.sql
  rm $DIR/hautelook_dev.sql
