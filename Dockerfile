FROM openjdk:21-jdk-slim


RUN echo "JFROG_USER=${JFRO_USER}"
RUN echo "JFROG_PASS=${JFROG_PASS}"

EXPOSE 8080

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "/app.jar"]

