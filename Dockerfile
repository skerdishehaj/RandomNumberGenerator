FROM openjdk:17-alpine
RUN mkdir -p /var/logs
VOLUME /var/logs
EXPOSE 8080
WORKDIR /app
ARG JAR_FILE=./target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
