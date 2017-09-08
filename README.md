# pmm-demo
Benchmark and sysload generators for pmmdemo.percona.com.

## Usage
```
cd pmm-demo
mysql < grants.sql
mysql < db_generate/create_dbs.sql
for file in `ls db_generate`; do
    sh ${file}
done
```
There is a directory per host which you should launch all scripts from a screen session locally:
```
screen -S pmm-demo
sh start_all.sh
```
Created by @PeterZaitsev and added by @michaelcoburn
