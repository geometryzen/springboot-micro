# springboot-micro

Spring Boot Microservice

The following will put gradle on your path, allowing the wrapper to be created.
Once you have the wrapper, you don't need global gradle.

export PATH=$PATH:/opt/gradle/gradle-4.7/bin

gradle wrapper

./gradlew clean build

The following does not work:

gradle build distDocker --refresh-dependencies

But this does work:

docker build . -t springboot-micro

docker run springboot-micro

docker rm -f gracious_newton

docker run --name="belfastjug-A" --publish 9001:8080 belfastjug

docker rm -f belfastjug-A