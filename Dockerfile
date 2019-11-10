FROM openjdk:11
COPY target/catalog-0.0.1-SNAPSHOT.jar /catalog.jar
EXPOSE 8080
CMD java -jar /catalog.jar