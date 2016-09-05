while true
do
    RND=$(( RANDOM % 9000 * 10000 ))
    mysql -u sbtest -psbtest -e "select avg(length(c)) from innodb.sbtest1 where id between $RND and $RND+10000000" > /dev/null
    sleep 1000
done
