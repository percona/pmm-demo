#!/bin/sh

set -o xtrace

SOCKET=${1:-/var/lib/mysql/mysql.sock}
DIR=$(dirname $0)

screen \
    -dm \
    -S sb_innodb \
    sh ${DIR}/sb_innodb.sh ${SOCKET}
sleep 60

screen \
    -dm \
    -S sb_innodb_spike \
    sh ${DIR}/sb_innodb_spike.sh ${SOCKET}
sleep 400

screen \
    -dm \
    -S extra_innodb \
    sh ${DIR}/extra_innodb.sh ${SOCKET}
sleep 5

echo "All Started!"
