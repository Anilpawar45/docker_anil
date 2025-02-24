FROM centos:7
RUN yum install java -yum
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz ./
RUN tar -xvf ./apache-tomcat* -C /opt
WORKDIR /opt/apache\*
CMD ["./bin/catalina.sh","run"]
EXPOSE 8080