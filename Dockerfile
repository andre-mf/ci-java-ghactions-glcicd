FROM gradle:latest AS build
WORKDIR /workspace
COPY *.gradle /workspace/
COPY /src src
RUN gradle build -x test

FROM openjdk:17-alpine
COPY --from=build /workspace/build/libs/cighactions-0.0.1-SNAPSHOT.jar /app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]