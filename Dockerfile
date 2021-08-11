FROM openjdk:8-jdk-alpine
MAINTAINER ymmihw
COPY target/helm-1.0-SNAPSHOT.jar helm-1.0-SNAPSHOT.jar
ENV DATABASE_NAME="my_database"
ENV DATABASE_HOST="172.16.10.177"
ENV DATABASE_PORT="13306"
ENV DATABASE_USERNAME="root"
ENV DATABASE_PASSWORD="123456"
ENTRYPOINT ["java", "-jar", "/helm-1.0-SNAPSHOT.jar", "--database.host=${DATABASE_HOST}",\
"--database.port=${DATABASE_PORT}", "--database.name=${DATABASE_NAME}",\
"--database.username=${DATABASE_USERNAME}", "--database.password=${DATABASE_PASSWORD}"]