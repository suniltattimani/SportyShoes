FROM maven
WORKDIR /app
COPY . /app
RUN mvn clean install
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
