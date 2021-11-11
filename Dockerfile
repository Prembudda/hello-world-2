# Pull base image 
##FROM tomcat:8-jre8 

# Maintainer 
##MAINTAINER "webinartechnologies@gmail.com" 
##COPY ./webapp.war /usr/local/tomcat/webapps
FROM openjdk:8
EXPOSE 8080
ADD target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar
ENTRYPOINT ["java","-jar","/docker-jenkins-integration-sample.jar"]
