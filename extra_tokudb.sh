while true 
do
    mysql -u sbtest -psbtest -e "select @a:=round(rand()*80000000); select avg(length(c)) from tokudb.sbtest1 where id between @a and @a+20000000" > /dev/null
    sleep 1500
done
