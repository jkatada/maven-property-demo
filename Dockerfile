From maven:3.5.3-jdk-8

USER root
WORKDIR /root

COPY ./pom.xml ./pom.xml
COPY ./settings.xml /root/.m2/settings.xml
COPY ./entry_point.sh ./entry_point.sh

ENTRYPOINT ["./entry_point.sh"]
