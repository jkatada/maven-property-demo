#!/bin/bash

export MAVEN_PROXY_PORT_INT=foo18080
export MAVEN_PROXY_NON_PROXY_HOSTS="zzz</nonProxyHosts><port>9999</port>"

echo "==== env ===="
env | sort
echo "============="

mvn -s /root/test/settings02.xml help:effective-settings

unset MAVEN_PROXY_PORT_INT
unset MAVEN_PROXY_NON_PROXY_HOSTS

