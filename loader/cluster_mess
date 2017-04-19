# Mess with this cluster node by Restarting it or causing full SST by removing db directory
# This script must be ran as root

while true
do
# Normal Cluster restart
service mysql restart
sleep 600
# Stop cluster wait and start again
service mysql stop
sleep 300
service mysql start
sleep 1200
# Kill MySQL process and see how cluster behaves
# Looks like broken now killall -9 mysqld
#sleep 600
# Normal Cluster restart again
service mysql restart
sleep 1800
# Remove MySQL directory and so do SST
service mysql stop
rm -rf /var/lib/mysql/*
service mysql start
sleep 900
done
