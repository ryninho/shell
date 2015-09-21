#!/bin/sh
# this is meant to run on the ds server, so uses GNU syntax
BASEDIR=$(dirname $0)
cd $BASEDIR

start_date=$(date -d 2015-09-19 +"%y%m%d")
#end_date=`date "+%Y-%m-%d"`
end_date=$(date -d 2015-09-21 +"%y%m%d")

dateTs=$start_date

while [ $dateTs -le $end_date ]
do
  date=$(date -d $dateTs +%Y-%m-%d)
  printf '%s\n' $date
  python script_to_run_for_multiple_dates.py -d $date
  dateTs=$(($dateTs+1))
done
