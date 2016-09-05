sysbench --oltp-table-size=100000000  --mysql-user=sbtest --mysql-password=sbtest --mysql-table-engine=tokudb --mysql-db=tokudb  --test=/usr/share/doc/sysbench/tests/db/oltp.lua prepare
