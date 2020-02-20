# Script to generate points in OpenTSDB

Usage:

    ./generate_points_opentsdb.sh

You should have your OpenTSDB running on 'localhost:4242'

On macOS it is easy to setup with

    brew install opentsdb

And then start HBASE 

    /usr/local/opt/hbase/bin/start-hbase.sh

And OpenTSDB

    /usr/local/opt/opentsdb/bin/start-tsdb.sh


OpenTSDB web UI: http://localhost:4242
