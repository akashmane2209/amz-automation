#!/bin/sh
script_dir=$(dirname "$0")
cd $script_dir
echo "Starting Task.sh"
browser=$1
browserMode=$2
echo $browser
echo $browserMode
mvn clean test -DBrowser=$browser -DBrowserMode=$browserMode -DsuiteXmlFile=src/test/resources/Amazon.xml
