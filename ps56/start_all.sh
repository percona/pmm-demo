nohup sh ./sb_innodb.sh > /dev/null &
sleep 60
nohup sh ./sb_innodb_icp.sh > /dev/null &
sleep 60
nohup sh ./sb_innodb_spike.sh > /dev/null &
sleep 5
echo "All Started!"
