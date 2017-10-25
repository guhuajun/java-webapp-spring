FROM java:8
EXPOSE 8080
ADD target/java-webapp-spring-0.1.0.jar ROOT.jar
ENTRYPOINT ["java", "-jar", "ROOT.jar"]
