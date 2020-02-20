# Script to generate points in OpenTSDB

Usage:

    ./generate_points_opentsdb.sh

It will put 100 points for 'sys.cpu.nice' metric with a step 60 seconds (from past till now).

It is equivalent of running 100 times

    curl -i -X POST -d '{"metric":"sys.cpu.nice", "timestamp":'$(date +%s)', "value":'$RANDOM', "tags": {"host":"localhost"}}' http://localhost:4242/api/put?details

## You should have your OpenTSDB running on 'localhost:4242'

On macOS it is easy to setup with

    brew install opentsdb

And then start HBASE 

    /usr/local/opt/hbase/bin/start-hbase.sh

And OpenTSDB

    /usr/local/opt/opentsdb/bin/start-tsdb.sh


OpenTSDB web UI: http://localhost:4242
