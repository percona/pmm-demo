while true 
do
    mysql -u sbtest -psbtest -e "select @a:=round(rand()*90000000); select avg(length(c)) from myisam.sbtest1 where id between @a and @a+10000000" > /dev/null
    sleep 1700
done
