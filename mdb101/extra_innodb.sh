#!/bin/sh

set -o xtrace

while true; do
    RND=$(( RANDOM % 7000 * 10000 ))
    mysql \
        -u sbtest \
        -psbtest \
        -e "
            SELECT avg(length(c))
            FROM   innodb.sbtest1
            WHERE  id between ${RND} and ${RND}+30000000
        "
    sleep 1000
done
