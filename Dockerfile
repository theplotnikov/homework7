FROM maven:latest
RUN apt update && apt install maven default-jdk git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn -f boxfuse-sample-java-war-hello/pom.xml package
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /opt/
CMD ["/bin/bash"]