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
sleep 15

screen \
    -dm \
    -S extra_innodb \
    sh ${DIR}/extra_innodb.sh ${SOCKET}
sleep 5

screen \
    -dm \
    -S sb_aria \
    sh ${DIR}/sb_aria.sh ${SOCKET}
sleep 5

screen \
    -dm \
    -S deadlock_holder \
    sh ${DIR}/deadlock_holder.sh ${SOCKET}
sleep 5

screen \
    -dm \
    -S deadlock_requestor \
    sh ${DIR}/deadlock_requestor.sh ${SOCKET}
sleep 5

screen \
    -dm \
    -S defrag_innodb \
    sh ${DIR}/defrag_innodb.sh ${SOCKET}
sleep 5

screen \
    -dm \
    -S onlineddl_innodb \
    sh ${DIR}/onlineddl_innodb.sh ${SOCKET}
sleep 5

echo "All Started!"
