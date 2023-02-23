# Docker SparkJava Dev Environment
This repo will help you develop spring-boot apps using docker without installing Java and/or libraries locally

## Features

- All downloaded jars, libraries will be stored locally so restarting the docker image won't cause expensive rebuilds
- Auto watch the directory src directory and any changes will trigger a build and restart
- Docker file is using 
```
eclipse-temurin:17-jdk
```
You can change that line in the *Dockerfile* to change the JDK version

# How to run
- Build the image first running *./build-docker-image.sh*
- *docker-compose up* will get you going
- Use your favorite code editor and hack away



# Understand before you modify the server port or the code of the*** SparkServer.java***
Due to lack of an automatic way to have a dev server in SparkJava I am using a hack where I run the Gradle *buildAndReload* task in the background to rebuild the classes, at the end of the rebuild it will execute the *curl http://localhost:4567/exit* to kill the server

The entry point to this container is a loop that keeps running the server after it exits

If you wanted to change the port of the spark server from the default 4567, make sure you change the curl request in the *build.gradle* accordingly

If you remove the *exit* get endpoint in the *SparkServer.java* the mechanism will also break!
