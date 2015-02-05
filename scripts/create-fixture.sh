#!/bin/bash
# load-fixture
# update permission before checking it in-- chmod ugo+x scripts/load-fixture.sh

#mysqldump -uroot -p hautelook --routines | gzip > /vagrant/sql_export/hautelook_dev.sql.gz

set -e

mysqldump -uroot -p hautelook --routines  > /vagrant/sql_export/hautelook_dev.sql
split --bytes=10M  /vagrant/sql_export/hautelook_dev.sql /vagrant/sql_export/hautelook.sql
rm /vagrant/sql_export/hautelook_dev.sql
