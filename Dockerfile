
# # FROM ubuntu:20.04
# # RUN apt-get update
# # ENV DEBIAN_FRONTEND=noninteractive
# # RUN apt-get install apache2 -y
# # RUN apt install -y apache2-utils 
# # RUN apt clean
# # WORKDIR /opt
# # COPY ./index.html /usr/share/apache2/index.html
# # ENTRYPOINT [ "apache2ctl", "-DFOREGROUND" ]




# FROM ubuntu:20.04
# RUN apt-get update
# ENV DEBIAN_FRONTEND=noninteractive
# ENV department=dev
# RUN apt-get install apache2 -y
# RUN apt install -y apache2-utils 
# RUN apt clean
# WORKDIR /opt
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip /opt
# COPY ./index.html /usr/share/apache2/index.html
# EXPOSE 8080
# ENTRYPOINT [ "apache2ctl", "-DFOREGROUND" ]


FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install -y openjdk-11-jdk wget 
RUN rm -rf /var/lib/apt/lists/*
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz /
RUN tar -xvf ./apache-tomcat-9.0.100.tar.gz -C /opt
WORKDIR /opt/
ENTRYPOINT ["/opt/apache-tomcat-9.0.100/bin/catalina.sh","run"]
EXPOSE 8080