FROM openjdk:8
RUN apt-get update
RUN apt-get install -y curl

EXPOSE 8761

ADD ./target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]