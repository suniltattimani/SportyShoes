FROM openjdk:16-alpine3.13
WORKDIR /app
COPY src /app
COPY pom.xml /app
RUN mvn clean \
    mvn install
EXPOSE 8080

