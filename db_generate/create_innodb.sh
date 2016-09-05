sysbench  --tx-rate=50 --num-threads=200 --report-interval=10 --max-time=0 --max-requests=0 --rand-type=pareto --oltp-table-size=100000000  --mysql-user=sbtest --mysql-password=sbtest  --mysql-db=innodb --test=/usr/share/doc/sysbench/tests/db/oltp.lua prepare

