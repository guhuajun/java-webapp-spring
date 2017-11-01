FROM maven:3.3-jdk-8-onbuild
WORKDIR /app
COPY . /app
RUN mvn package

FROM java:8
EXPOSE 8080
COPY --from=0 /usr/src/app/target/java-webapp-spring-0.1.0.jar /opt/ROOT.jar
ENTRYPOINT ["java", "-jar", "/opt/ROOT.jar"]
