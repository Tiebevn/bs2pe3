FROM maven:3.6.2-jdk-11 AS BUILD
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

FROM openjdk:11
COPY --from=BUILD /tmp/target/*.jar /catalog.jar
EXPOSE 8080
CMD java -jar /catalog.jar