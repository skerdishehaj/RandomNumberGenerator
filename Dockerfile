FROM eclipse-temurin:19-alpine

RUN mkdir -p /var/logs
VOLUME /var/logs
EXPOSE 8080

WORKDIR /app
COPY ./target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
