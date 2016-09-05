while true
do
	sysbench --test=/usr/share/doc/sysbench/tests/db/oltp.lua   --report-interval=10 --oltp-tables-count=100000 --oltp-table-size=100 --max-time=0 --oltp-read-only=off --max-requests=0 --num-threads=100 --tx-rate=20  --rand-type=pareto --db-driver=mysql --mysql-user=sbtest --mysql-password=sbtest --mysql-db=innodb --oltp-reconnect run    > /dev/null
	sleep 60
done
