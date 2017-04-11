#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}

while true; do
    mysql \
        --socket=$SOCKET \
        --user=sbtest \
        --password=sbtest \
        -e "
            ALTER TABLE innodb.sbtest1 ADD x VARCHAR(5), LOCK=NONE, ALGORITHM=INPLACE;
        "
    sleep 5
    mysql \
        --socket=$SOCKET \
        --user=sbtest \
        --password=sbtest \
        -e "
            ALTER TABLE innodb.sbtest1 DROP x, LOCK=NONE, ALGORITHM=INPLACE;
        "
    sleep 5
done
