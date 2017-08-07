FROM openjdk:8u111-jdk-alpine
VOLUME /tmp
ADD /build/libs/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar", "-Dspring.profiles.active=production", "/app.jar"]