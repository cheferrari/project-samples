# https://docs.docker.com/develop/develop-images/multistage-build/
# Build
FROM maven:3.5.0-jdk-8-alpine AS builder

ADD ./pom.xml pom.xml
ADD ./src src/
RUN mvn clean package


# Package
FROM java:8-alpine

WORKDIR /

#ADD target/gs-spring-boot-0.1.0.jar gs-spring-boot-0.1.0.jar
COPY --from=builder target/gs-spring-boot-0.1.0.jar gs-spring-boot.jar

#RUN bash -c 'touch /gs-spring-boot.jar'
COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
