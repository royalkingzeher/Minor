FROM openjdk:8
EXPOSE 8080
ADD target/travel.management.system-0.0.1-SNAPSHOT.jar  travel.management.system-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/travel.management.system-0.0.1-SNAPSHOT.jar"]
