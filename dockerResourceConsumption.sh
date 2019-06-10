#! /bin/bash

mv dockerResourceConsumption.csv dockerResourceConsumption.csv.$(date +%Y-%m-%d_%H-%M-%S)
rm -f dockerResourceConsumption.tmp*

END=$1

while [ $SECONDS -lt $END ]
do
        echo "docker resource consumption is being capture for CPU $SECONDS seconds"
        docker stats --format="{{.ID}},{{.Name}},{{.CPUPerc}}" --no-stream | ts '%Y-%m-%d %H:%M:%S,' >> dockerResourceConsumption.tmp1
done

sed 's/%//g' dockerResourceConsumption.tmp1 > dockerResourceConsumption.tmp2
sed 's/, /,/g' dockerResourceConsumption.tmp2 > dockerResourceConsumption.csv

exit 0;