FROM eduardoriveror/maven-jdk14:v0.1
# RUN apk add --no-cache maven 
COPY . /
RUN mvn -N io.takari:maven:wrapper
EXPOSE 8080
ENTRYPOINT ["./mvnw", "spring-boot:run"]