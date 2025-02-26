# Build stage
FROM eclipse-temurin:23-jdk-alpine AS builder

WORKDIR /app

# Copy package filess
COPY . .
RUN chmod +x ./gradlew
RUN ./gradlew clean bootJar --no-daemon

# Production stage
FROM eclipse-temurin:23-jre-alpine AS runner

WORKDIR /app

# Copy the jar file from builder stage
COPY --from=builder /app/build/libs/*.jar app.jar

# Set environment variables
ENV PORT=8080
ENV SPRING_PROFILES_ACTIVE=prod

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", "app.jar"]
