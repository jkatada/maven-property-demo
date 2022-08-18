From maven:3.8.6-jdk-11

USER root
WORKDIR /root

COPY ./pom.xml ./pom.xml
COPY ./settings.xml /root/settings.xml
COPY ./entry_point.sh ./entry_point.sh

ENTRYPOINT ["./entry_point.sh"]
