FROM eclipse-temurin:17-jdk

WORKDIR /app

# Copy everything into the container
COPY . .

# Make mvnw executable
RUN chmod +x mvnw

# Build the application
RUN ./mvnw clean package -DskipTests

EXPOSE 8081

CMD ["java", "-jar", "target/E-Commerce-project-0.0.1-SNAPSHOT.jar"]
