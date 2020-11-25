FROM alpine:3.10.1 as build
RUN apk --no-cache add openjdk11
RUN apk --no-cache add maven
RUN apk --no-cache add git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn -f boxfuse-sample-java-war-hello/pom.xml package
RUN mvn dependency:go-offline
#RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /opt/
