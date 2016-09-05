nohup sh ./sb_innodb.sh > /dev/null &
sleep 60
nohup sh ./sb_myisam.sh > /dev/null &
sleep 60
nohup sh ./sb_innodb_qc.sh > /dev/null &
sleep 60
nohup sh ./sb_innodb_qc_res.sh > /dev/null &
sleep 60
nohup sh ./sb_innodb_spike.sh > /dev/null &
sleep 60
nohup sh ./extra_innodb.sh > /dev/null &
sleep 300
nohup sh ./extra_myisam.sh > /dev/null &
sleep 5
echo "All Started!"
