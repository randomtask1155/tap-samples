FROM openjdk:21-jdk-slim


ARG JFROG_USER
ARG JFROG_PASS
RUN echo "JFROG_USER=$JFROG_USER"
RUN echo "JFROG_PASS=$JFROG_PASS"

#RUN env
#RUN ls -lR
#RUN ps -ef
RUN cat /proc/14/environ

EXPOSE 8080

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "/app.jar"]

