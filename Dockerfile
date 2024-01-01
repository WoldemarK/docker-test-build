FROM openjdk:17-alpine
COPY target/docker-test-build-0.0.1-SNAPSHOT.jar /test.jar
CMD ["java", "-jar", "test.jar"]

#FROM maven:3.6.3-jdk-11-slim
#COPY ./ ./
#RUN mvn clean package
#CMD ["java", "-jar", "target/docker-test-build-0.0.1-SNAPSHOT.jar"]

#FROM maven:3.9.6-sapmachine-17 AS MAVEN_BUILD
#COPY ./ ./
#RUN  mvn  clean package
#
#FROM openjdk:17-alpine
#COPY --from=MAVEN_BUILD /target/docker-test-build-0.0.1-SNAPSHOT.jar /test.jar
#CMD ["java", "-jar", "/test.jar"]