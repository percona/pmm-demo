# We run this one on pxc56-1 only and directly to simulate how large transactions impact cluster
while true
do
    RND=$(( RANDOM % 1000 ))
    mysql -u sbtest -psbtest -e "update innodb_small.sbtest1 set k=$RND" > /dev/null
    sleep 950
done
