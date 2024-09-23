# Use the official Eclipse Temurin image as the base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Expose the port the application runs on
EXPOSE 8080

# Set environment variables
ENV APP_HOME /usr/src/app

# Copy the JAR file from the target directory to the working directory
COPY target/*.jar $APP_HOME/

# Specify the command to run the application
CMD ["java", "-jar", "$APP_HOME/app.jar"]

