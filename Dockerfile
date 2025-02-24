FROM centos:9
RUN yum install java -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz ./
RUN tar -xzf ./apache-tomcat* -C /opt/ && mv /opt/apache-tomcat* /opt/apache-tomcat
WORKDIR /opt/apache-tomcat
ENTRYPOINT ["./bin/catalina.sh","run"]
EXPOSE 8080