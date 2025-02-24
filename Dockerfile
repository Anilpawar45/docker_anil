# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk wget && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Download and extract Tomcat
RUN wget -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz| tar xz -C /usr/local && \
    mv /usr/local/apache-tomcat-9.0.100 $CATALINA_HOME && \
    chmod +x $CATALINA_HOME/bin/*.sh

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["./bin/catalina.sh", "run"]
