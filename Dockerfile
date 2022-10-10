FROM openjdk:8-jdk-alpine
EXPOSE 8083
ADD target/tpAchatProject-1.0.war tpachatproject.war
ENTRYPOINT ["java","-jar","/tpachatproject.war"]
