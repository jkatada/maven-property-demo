#!/bin/bash

echo "==== env ===="
env | sort
echo "============="

# confirm <server>/<userName>
mvn -DsomeUser=hoge -s /root/test/settings04.xml help:effective-settings -X
mvn -DsomeUser=me -s /root/test/settings04.xml help:effective-settings

