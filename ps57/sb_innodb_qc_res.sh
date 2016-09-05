while true
do
    mysql -usbtest -psbtest -e "update innodb_small.sbtest1 set k=rand()*3 where id=5"
    sleep  550
done
