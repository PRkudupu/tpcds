#!/bin/sh
query_m=$1
echo "Move all queries to 05_sql"
mv /root/data/tpcds/TPC-DS/05_sql/backup/*.sql /root/data/tpcds/TPC-DS/05_sql/
