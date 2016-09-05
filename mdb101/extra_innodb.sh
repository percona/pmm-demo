while true
do
    RND=$(( RANDOM % 7000 * 10000 ))
    mysql -u sbtest -psbtest -e "select avg(length(c)) from innodb.sbtest1 where id between $RND and $RND+30000000" > /dev/null
    sleep 1000
done
