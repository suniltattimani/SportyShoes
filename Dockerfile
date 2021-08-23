FROM maven
WORKDIR /app
COPY . /app
RUN mvn clean install
EXPOSE 8080

