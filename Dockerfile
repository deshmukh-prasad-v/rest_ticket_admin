# Use official OpenJDK 17 image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory inside container
WORKDIR /app

# Copy the built jar file from nested folder
#COPY target/*.jar app.jar
COPY target/restapi_app-0.0.1-SNAPSHOT.jar app.jar

# Expose Spring Boot default port
EXPOSE 9080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
