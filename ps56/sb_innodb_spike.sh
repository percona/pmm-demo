while true
do
	sysbench   --num-threads=64 --report-interval=10 --max-time=300 --max-requests=0 --rand-type=uniform --oltp-tables-count=100000  --oltp-table-size=100  --mysql-user=sbtest --mysql-password=sbtest  --mysql-db=innodb --oltp-reconnect --test=/usr/share/doc/sysbench/tests/db/update_index.lua  run   >> /dev/null
	sleep 3300
done
