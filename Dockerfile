FROM gradle:4.7.0-jdk8-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM openjdk:7-jre-slim

FROM alpine/git:1.0.4
CMD ["git", "version"]
WORKDIR /home
