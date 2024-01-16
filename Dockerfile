FROM openjdk:17-alpine
RUN mkdir -p /var/logs
VOLUME /var/logs
WORKDIR /app
ARG JAR_FILE=./target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
