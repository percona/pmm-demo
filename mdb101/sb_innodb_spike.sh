#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}

while true; do
    sysbench \
        --mysql-socket=$SOCKET \
        --num-threads=64 \
        --report-interval=10 \
        --max-time=300 \
        --max-requests=0 \
        --rand-type=pareto \
        --oltp-table-size=100000000 \
        --mysql-user=sbtest \
        --mysql-password=sbtest \
        --mysql-db=innodb \
        --oltp-reconnect \
        --test=/usr/share/doc/sysbench/tests/db/update_index.lua \
        run
	sleep 3300
done
