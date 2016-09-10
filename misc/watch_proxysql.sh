  watch -n 1 'mysql -h 127.0.0.1 -P 6032 -uadmin -padmin -t \
    -e " select *from mysql_servers order by hostgroup_id,hostname ;" \
    -e "select * from stats_mysql_connection_pool order by hostgroup,srv_host ;" 2> /dev/null'
