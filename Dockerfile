FROM openjdk:17-alpine

MAINTAINER Dincer Beken "dbeken@hotmail.de"

EXPOSE 8080

WORKDIR /usr/local/bin/

COPY target/springboot-restful-webservices-0.0.1-SNAPSHOT.jar webapp.jar
COPY application.properties /opt/application.properties

# CMD ["java","-Dspring.datasource.url=jdbc:mysql://localhost:3306/user_management","-Dspring.datasource.username=root","-Dspring.datasource.password=password","-Dspring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect","-Dspring.jpa.hibernate.ddl-auto=update","-jar","webapp.jar"]
ENTRYPOINT ["java","-jar","webapp.jar","--spring.config.location=/opt/application.properties"]
