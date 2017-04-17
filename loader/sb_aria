#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}

sysbench \
    --mysql-socket=$SOCKET \
    --mysql-user=sbtest \
    --mysql-password=sbtest \
    --mysql-db=aria \
    /usr/share/sysbench/oltp_read_write.lua \
    cleanup
sysbench \
    --mysql-socket=$SOCKET \
    --mysql-user=sbtest \
    --mysql-password=sbtest \
    --mysql-db=aria \
    /usr/share/sysbench/oltp_read_write.lua \
    prepare
mysql \
    --socket=$SOCKET \
    --user=sbtest \
    --password=sbtest \
    -e "ALTER TABLE aria.sbtest1 ENGINE=aria, TRANSACTIONAL=1"

while true; do
    sysbench \
        --mysql-socket=$SOCKET \
        --rate=1 \
        --threads=1 \
        --report-interval=1 \
        --time=0 \
        --events=0 \
        --rand-type=pareto \
        --mysql-user=sbtest \
        --mysql-password=sbtest \
        --mysql-db=aria \
        --point_selects=1 \
        /usr/share/sysbench/oltp_read_write.lua \
        run
    sleep 5
done
