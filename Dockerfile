FROM openjdk:17-jdk-slim as build
WORKDIR /app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw install -DskipTests

FROM openjdk:17-alpine
RUN mkdir -p /var/logs
VOLUME /var/logs
COPY --from=build /app/target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
