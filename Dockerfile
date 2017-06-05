FROM openjdk:8-jdk

MAINTAINER Timo Schaefer <timo.schaefer@gmail.com>

COPY build/libs/java-gradle-skeleton.jar /
COPY src/main/docker/entrypoint.sh /

RUN chmod +x /entrypoint.sh

EXPOSE 8090

ENTRYPOINT ["/entrypoint.sh"]
