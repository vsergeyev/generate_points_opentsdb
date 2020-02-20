#!/bin/bash

echo "This script will populate localhost:4242 OpenTSDB with a set of random values and metric 'sys.cpu.nice'"
echo "It will use Now as starting point and put 100 points in the past with decrement 60 seconds"
echo "Tags are - host = localhost / loc.remote.loc"

let now=$(date +%s)

# increase 100 to a number of points you want to get
for (( i=1; i <= 100; i++ ))
do
    let ts=$((now-$i*60))
    # echo $ts
    # echo $i' of 100'

    # echo '{"metric":"sys.cpu.nice", "timestamp":'$ts', "value":'$RANDOM', "tags": {"host":"localhost"}}'

    curl -i -X POST -d '{"metric":"sys.cpu.nice", "timestamp":'$ts', "value":'$RANDOM', "tags": {"host":"localhost"}}' http://localhost:4242/api/put?details
    curl -i -X POST -d '{"metric":"sys.cpu.nice", "timestamp":'$ts', "value":'$RANDOM', "tags": {"host":"loc.remote.loc"}}' http://localhost:4242/api/put?details
done

