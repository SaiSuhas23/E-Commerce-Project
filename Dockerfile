# Use Java 21 (matches your local Java)
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom
COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn

# Download dependencies
RUN ./mvnw dependency:go-offline

# Copy source code
COPY src src

# Build the application
RUN ./mvnw clean package -DskipTests

# Expose port (Spring Boot default)
EXPOSE 8081

# Run the jar
CMD ["java", "-jar", "target/E-Commerce-project-0.0.1-SNAPSHOT.jar"]
