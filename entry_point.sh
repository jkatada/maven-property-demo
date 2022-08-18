#!/bin/bash

mvn help:effective-settings -X

export MAVEN_PROXY_HOST_STRING=proxy.foo.com
export MAVEN_PROXY_PORT_INT=18080

echo "==== env ===="
env | sort
echo "============="

mvn -s /root/settings.xml help:effective-settings -X
