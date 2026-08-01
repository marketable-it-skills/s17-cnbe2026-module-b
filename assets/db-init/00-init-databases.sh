#!/bin/bash
set -e

mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
	CREATE DATABASE IF NOT EXISTS \`reclaim_api\`;
EOSQL

mysql -u root -p"$MYSQL_ROOT_PASSWORD" "reclaim_api" < /dumps/reclaim-db.sql
