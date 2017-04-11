#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}

mysql \
    --socket=$SOCKET \
    --user=sbtest \
    --password=sbtest \
    -e "
        DROP TABLE IF EXISTS innodb.deadlock;
        CREATE TABLE innodb.deadlock (
            pk int unsigned auto_increment primary key
        ) ENGINE=innodb;
        INSERT INTO innodb.deadlock (pk) VALUES (1);
    "

while true; do
    mysql \
        --socket=$SOCKET \
        --user=sbtest \
        --password=sbtest \
        -e "
            START TRANSACTION;
            SELECT * FROM innodb.deadlock WHERE pk = 1 LOCK IN SHARE MODE;
            SELECT SLEEP(1);
            DELETE FROM innodb.deadlock where pk = 1;
        "
done
