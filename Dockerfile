FROM eclipse-temurin:19-alpine

RUN mkdir -p /var/logs
VOLUME /var/logs
EXPOSE 8080

WORKDIR /app
ARG JAR_FILE=/target/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
