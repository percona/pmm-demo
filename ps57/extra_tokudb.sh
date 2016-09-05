while true
do
    RND=$(( RANDOM % 8000 * 10000 ))
    mysql -u sbtest -psbtest -e "select avg(length(c)) from myisam.sbtest1 where id between $RND and $RND+20000000" > /dev/null
    sleep 1500
done
