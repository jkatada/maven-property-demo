#!/bin/bash

export MAVEN_STRING1=maven.string1
export MAVEN_STRING2=maven.string2
export MAVEN_INT=7777
export MAVEN_BOOLEAN=true

echo "==== env ===="
env | sort
echo "============="

mvn -s /root/test/settings01.xml help:effective-settings

unset MAVEN_STRING1
unset MAVEN_STRING2
unset MAVEN_INT
unset MAVEN_BOOLEAN
