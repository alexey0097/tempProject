FROM openjdk:11

EXPOSE 8080

MAINTAINER Leonov Alexey Vladimirovich <alexey0097@yandex.ru>

ENV DEBUG_LEVEL INFO

WORKDIR /opt/service

ADD target/tempProject-*.jar tempProject.jar

ENTRYPOINT java -jar -DDEBUG_LEVEL=$DEBUG_LEVEL tempProject.jar