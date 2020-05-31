# FROM maven:3.6.3-jdk-8-slim as build
# COPY src /home/app/src
# COPY pom.xml /home/app
# RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:8-jdk-alpine
LABEL maintainer="thongo5430@gmail.com"
VOLUME /tmp
EXPOSE 8080
# COPY --from=build /home/app/target/trillion-0.0.1-SNAPSHOT.jar app.jar
ADD /target/trillion-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]