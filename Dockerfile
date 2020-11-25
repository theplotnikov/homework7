FROM maven:3.6.3-jdk-8-slim as build
RUN apt update && apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn -f boxfuse-sample-java-war-hello/pom.xml package
RUN cp /root/boxfuse-sample-java-war-hello/target/hello-1.0.war /root/

