#!/bin/bash
# load-fixture
# update permission before checking it in-- chmod ugo+x scripts/load-fixture.sh

mysqldump -uroot -p hautelook --routines > /vagrant/sql_export/hautelook_dev.sql
