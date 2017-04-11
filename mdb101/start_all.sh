#!/bin/sh

set -o xtrace

DIR=$(dirname $0)

screen \
    -dm \
    -S sb_innodb \
    sh ${DIR}/sb_innodb.sh
sleep 60

screen \
    -dm \
    -S sb_innodb_spike \
    sh ${DIR}/sb_innodb_spike.sh
sleep 400

screen \
    -dm \
    -S extra_innodb \
    sh ${DIR}/extra_innodb.sh
sleep 5

echo "All Started!"
