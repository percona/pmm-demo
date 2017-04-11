#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}

while true; do
    mysql \
        --socket=$SOCKET \
        --user=sbtest \
        --password=sbtest \
        -e "
            OPTIMIZE TABLE innodb.sbtest1;
        "
    sleep 5
done
