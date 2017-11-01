FROM maven:3.5.2-jdk-8 AS build-env
WORKDIR /app
COPY . /app
RUN mvn package

FROM java:8
EXPOSE 8080
ADD --from=build-env app/target/java-webapp-spring-0.1.0.jar ROOT.jar
ENTRYPOINT ["java", "-jar", "ROOT.jar"]
