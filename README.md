# springboot-micro

http://samatkinson.com/why-i-hate-spring/

Spring Boot Microservice

The following will put gradle on your path, allowing the wrapper to be created.
Once you have the wrapper, you don't need global gradle.

export PATH=$PATH:/opt/gradle/gradle-4.7/bin

gradle wrapper

./gradlew clean build

## Building the Docker image using the docker plugin

The following command creates the image but it fails with "Error: Could not find or load main class hello.Application"

./gradlew clean build distDocker --refresh-dependencies

## Building the Docker image conventionally

But this does work:

docker build . -t springboot-micro

docker run springboot-micro

docker rm -f gracious_newton

docker run --name="belfastjug-A" --publish 9001:8080 belfastjug

docker rm -f belfastjug-A

## References

https://spring.io/projects

https://spring.io/guides