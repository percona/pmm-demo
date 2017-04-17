#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}

while true; do
    mysql \
        --socket=$SOCKET \
        --user=sbtest \
        --password=sbtest \
        -e "
            START TRANSACTION;
            DELETE FROM innodb.deadlock where pk = 1;
        "
done
