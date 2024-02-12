#start with base image containing java runtime
FROM openjdk:17

#Make port 8080 available to world outside the container
EXPOSE 8080


ADD target/docker-jenkin-integration-sample.jar docker-jenkin-integration-sample.jar

#Run the jar fileds
ENTRYPOINT ["java","-jar","/docker-jenkin-integration-sample.jar"]