FROM maven:3.6.3-jdk-8-slim
RUN apt update && apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn -f boxfuse-sample-java-war-hello/pom.xml package
#WORKDIR /root/boxfuse-sample-java-war-hello/target/
#RUN cp ./hello-1.0.war /tmp/
RUN ls -l /root/boxfuse-sample-java-war-hello/target/