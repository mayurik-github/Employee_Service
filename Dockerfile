FROM openjdk:17-jdk

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} employee-service.jar

EXPOSE 8090

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "/employee-service.jar"]
