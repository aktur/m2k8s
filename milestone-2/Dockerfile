FROM openjdk:8u252-jre-slim

COPY target/ /usr/app
RUN mkdir /data

WORKDIR /usr/app

EXPOSE 8080

CMD ["java", "-jar", "profile-api-1.0.jar"]