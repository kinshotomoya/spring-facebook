FROM openjdk:11
RUN apt-get update && apt-get install -y maven
WORKDIR /app
COPY . .
RUN mvn package -DskipTests=true
CMD ["java", "-jar", "/app/target/facebook-spring-0.0.1-SNAPSHOT.jar"]
