#!/bin/bash
# load-fixture

mysql -e 'create database hautelook;'
mysql -e "create user 'hautelook'@'%';" --user=root
mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'hautelook'@'%';" --user=root
mysql -e "FLUSH PRIVILEGES;" --user=root
mysql -uroot hautelook < hautelook_dev.sql
mysql -uroot hautelook < postd
mysql -e 'use hautelook; select * from events WHERE event_id = 38568;'
