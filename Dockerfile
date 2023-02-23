#dockerfile to run java spring boot locally JDK11
FROM eclipse-temurin:17-jdk

WORKDIR /app

#CMD ["./gradlew", "bootRun", "-Ddevelopment=true"]
# script which watches source file changes in background and executes bootRun
CMD ["sh", "start.sh"]