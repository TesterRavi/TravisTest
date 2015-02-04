#!/bin/bash
# load-fixture
# update permission before checking it in-- chmod ugo+x scripts/load-fixture.sh

#mysqldump -uroot -p hautelook --routines | gzip > /vagrant/sql_export/hautelook_dev.sql.gz


mysqldump -uroot -p hautelook --routines  > /vagrant/sql_export/hautelook_dev.sql
split --bytes=10M  hautelook_dev.sql hautelook.sql
