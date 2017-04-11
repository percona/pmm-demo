#!/bin/sh

set -o xtrace

while true; do
    sysbench \
        --tx-rate=20 \
        --num-threads=64 \
        --report-interval=10 \
        --max-time=0 \
        --max-requests=0 \
        --rand-type=pareto \
        --oltp-table-size=100000000 \
        --mysql-user=sbtest \
        --mysql-password=sbtest \
        --mysql-db=innodb \
        --oltp-reconnect \
        --test=/usr/share/doc/sysbench/tests/db/oltp.lua \
        run
    sleep 60
done
