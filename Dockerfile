# Use the AdoptOpenJDK Java 17 image as the base image
FROM eclipse-temurin:17-jre-focal

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file of your Java application to the container's working directory
COPY ./target/gravitron-0.0.1-SNAPSHOT.jar /app/gravitron.jar

# (Optional) If your application requires additional dependencies or resources, copy them to the container as well
# COPY some-dependency.jar /app/some-dependency.jar

# (Optional) Expose any necessary ports for your application
#EXPOSE 8080

# (Optional) Set environment variables if required
# ENV VAR_NAME=value

# Command to run your Java application
CMD ["java", "-jar", "gravitron.jar"]