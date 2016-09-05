nohup sh ./sb_innodb_r.sh > /dev/null &
sleep 60
nohup sh ./sb_innodb_qc_r.sh > /dev/null &
sleep 60
nohup sh ./extra_innodb_r.sh > /dev/null &
echo "All Started!"
