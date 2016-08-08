nohup sh ./sb_innodb.sh > /dev/null &
sleep 60
nohup sh ./sb_tokudb.sh > /dev/null &
sleep 60
nohup sh ./sb_myisam.sh > /dev/null &
sleep 60
nohup sh ./extra_innodb.sh > /dev/null &
sleep 300
nohup sh ./extra_tokudb.sh > /dev/null &
sleep 400
nohup sh ./extra_myisam.sh > /dev/null &
sleep 5
echo "All Started!"

