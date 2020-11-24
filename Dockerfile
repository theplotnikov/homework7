FROM maven:3.6.3-jdk-11
RUN apt update && apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn -f boxfuse-sample-java-war-hello/pom.xml clean package
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/
CMD ["cp" "boxfuse-sample-java-war-hello/target/hello-1.0.war" "/usr/local/tomcat/webapps"]
