From openjdk:8u162-jdk

USER root
WORKDIR /root

COPY ./pom.xml ./pom.xml
COPY ./settings.xml /root/.m2/settings.xml
COPY ./entry_point.sh ./entry_point.sh
COPY ./maven ./maven

ENTRYPOINT ["./entry_point.sh"]
