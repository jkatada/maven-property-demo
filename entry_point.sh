#!/bin/bash

set -eux

cd ./maven
unzip apache-maven-${MAVEN_VERSION}-bin.zip
export PATH=/root/maven/apache-maven-${MAVEN_VERSION}/bin:$PATH
cd ../

#mvn help:effective-settings -X
mvn clean help:effective-settings

cd /root
rm -rf ./log/*
/bin/bash ./test/test01.sh > ./log/test01.log
/bin/bash ./test/test02.sh > ./log/test02.log
/bin/bash ./test/test03.sh > ./log/test03.log
/bin/bash ./test/test04.sh > ./log/test04.log

