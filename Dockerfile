FROM frolvlad/alpine-oraclejdk8:slim
EXPOSE 8080
RUN mkdir -p /app/
ADD build/libs/springboot-micro.jar /app/microservice.jar
ENTRYPOINT ["java", "-jar", "/app/microservice.jar"]