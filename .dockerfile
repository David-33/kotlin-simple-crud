# Start with a base image containing Java runtime
FROM amazoncorretto:8-al2-jdk

# Create a directory
WORKDIR /app

# Copy all the files from the current directory to the image
COPY . .

# build the project avoiding tests
RUN ./gradlew clean build -x test

# Expose ports
EXPOSE 8080
EXPOSE 8081
EXPOSE 5005

# Run the jar file
CMD ["java", "-jar", "./build/libs/SimpleCRUD-0.0.1.jar"]
