FROM openjdk:8-jdk-alpine
MAINTAINER ymmihw
COPY target/helm-1.0-SNAPSHOT.jar helm-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/helm-1.0-SNAPSHOT.jar"]