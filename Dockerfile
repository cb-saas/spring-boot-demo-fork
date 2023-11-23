#see https://spring.io/guides/gs/spring-boot-docker/
FROM eclipse-temurin:17.0.9_9-jre-ubi9-minimal
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-jar","/app.war"]
