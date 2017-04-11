#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}

while true; do
    sysbench \
        --rate=20 \
        --threads=64 \
        --report-interval=10 \
        --time=0 \
        --events=0 \
        --rand-type=pareto \
        --oltp-table-size=100000000 \
        --db-driver=mysql \
        --mysql-socket=$SOCKET \
        --mysql-user=sbtest \
        --mysql-password=sbtest \
        --mysql-db=innodb \
        --oltp-reconnect \
        /usr/share/sysbench/tests/include/oltp_legacy/oltp.lua \
        run
    sleep 60
done
