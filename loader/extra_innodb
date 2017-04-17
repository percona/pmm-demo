#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}

while true; do
    RND=$(( RANDOM % 7000 * 10000 ))
    mysql \
        --socket=$SOCKET \
        --user=sbtest \
        --password=sbtest \
        -e "
            SELECT avg(length(c))
            FROM   innodb.sbtest1
            WHERE  id between ${RND} and ${RND}+30000000
        "
    sleep 1000
done
