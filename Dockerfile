# We'll make this as simple as possible
FROM frolvlad/alpine-oraclejdk8:slim
# We added a VOLUME pointing to "/tmp" because that is where a Spring Boot application
# creates working directories for Tomcat by default.
# The effect is to create a temporary file on your host under "/var/lib/docker" and
# link it to the container under "/tmp".
# This step is optional for the simple app that we wrote here, but can be necessary
# for other Spring Boot applications if they need to actually write in the filesystem.
# https://spring.io/guides/gs/spring-boot-docker/
VOLUME /tmp
EXPOSE 8080
# RUN mkdir -p /app/
# It's a pain and redundant to have to specify the version
ADD build/libs/my-springboot-micro-base-name-0.1.0.jar app.jar
# ENTRYPOINT ["java", "-jar", "/app.jar"]
# To reduce Tomcat startup time we added a system property pointing to "/dev/urandom" as a source of entropy.
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]