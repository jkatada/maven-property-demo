#!/bin/bash

export MAVEN_PROXY_PORT_HOST=foo.bar.com
export MAVEN_PROXY_PORT_INT=18080
export MAVEN_PROXY_NON_PROXY_HOSTS="zzz</nonProxyHosts><port>9999</port>"

echo "==== env ===="
env | sort
echo "============="

mvn -s /root/test/settings03.xml help:effective-settings

unset MAVEN_PROXY_PORT_HOST
unset MAVEN_PROXY_PORT_INT
unset MAVEN_PROXY_NON_PROXY_HOSTS
