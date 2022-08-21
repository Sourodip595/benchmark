FROM openjdk:17-jdk-oracle
VOLUME /tmp
EXPOSE 7000
ADD target/*.jar app.jar
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]
