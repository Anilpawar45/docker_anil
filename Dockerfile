FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk wget && \
    rm -rf /var/lib/apt/lists/*
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz ./
RUN tar -xvf ./apache-tomcat* -C /opt/ && mv /opt/apache-tomcat* /opt/apache-tomcat
WORKDIR /opt/apache-tomcat-9.0.100/
ENTRYPOINT ["/optapache-tomcat-9.0.100/bin/catalina.sh", "run"]
EXPOSE 8080
