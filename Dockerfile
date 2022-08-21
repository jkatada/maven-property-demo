From openjdk:11-jdk

USER root
WORKDIR /root

COPY ./pom.xml ./pom.xml
COPY ./entry_point.sh ./entry_point.sh
COPY ./test ./test
COPY ./maven ./maven

ENTRYPOINT ["./entry_point.sh"]
