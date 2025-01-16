# Start with a java base image 
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the application JAR file
COPY target/spring-petclinic-3.4.0-SNAPSHOT.jar app.jar

# Expose the default port Spring Boot uses
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]

