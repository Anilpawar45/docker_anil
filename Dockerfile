# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk wget && \
    rm -rf /var/lib/apt/lists/*
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz ./
RUN tar -xzf ./apache-tomcat-9.0.100 -C /opt
WORKDIR /opt/apache-tomcat-9.0.100\*
ENTRYPOINT ["./bin/catalina.sh", "run"]
EXPOSE 8080
