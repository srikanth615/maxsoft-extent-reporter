FROM maven:3.8.5-openjdk-11-slim AS build
COPY . /app
WORKDIR /app
RUN mvn clean install
FROM openjdk:11-jre-slim
COPY --from=build /app/target/your-project.jar /app/your-project.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/your-project.jar"]
