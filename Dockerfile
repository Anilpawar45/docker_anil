FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*
# Define Tomcat version
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz ./
# Download and extract Tomcat
RUN tar -xvf apache-tomcat-9.0.100.tar.gz -C /opt

# Expose Tomcat port
EXPOSE 8080

# Set working directory
WORKDIR /opt/apache-tomcat-9.0.100/

# Start Tomcat server
CMD ["./bin/catalina.sh", "run"]
