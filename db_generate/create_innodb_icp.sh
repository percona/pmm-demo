sysbench  --tx-rate=50 --num-threads=200 --report-interval=10 --max-time=0 --max-requests=0 --rand-type=pareto --oltp-table-size=100000  --mysql-user=sbtest --mysql-password=sbtest  --mysql-db=innodb_icp --test=/home/ansible-deploy/pmm-demo/tests-0.5/select_random_ranges.lua prepare

