nohup sh ./sb_innodb.sh > /dev/null &
sleep 60
nohup sh ./sb_innodb_spike.sh > /dev/null &
sleep 200
nohup sh ./extra_innodb.sh > /dev/null &
sleep 450
nohup sh ./large_update.sh > /dev/null &
sleep 5
echo "All Started!"
