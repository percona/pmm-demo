while true
do
sysbench  --tx-rate=10 --num-threads=64 --report-interval=10 --max-time=0 --max-requests=0 --rand-type=pareto --oltp-table-size=100000000  --mysql-host=127.0.0.1 --mysql-port=3306 --mysql-user=sbtest --mysql-password=sbtest  --mysql-db=innodb --oltp-reconnect --test=/usr/share/doc/sysbench/tests/db/oltp.lua run >> /dev/null
    sleep 5
done
