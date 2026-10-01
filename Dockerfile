FROM eclipse-temurin:26-jre

WORKDIR /app

# do ./mvnw package -> run it , it will package the jar, or you can install it, if other microservices
# has dependency on it
COPY /target/HotelService-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 6062

# java jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]