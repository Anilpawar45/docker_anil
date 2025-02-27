
FROM ubuntu:20.04
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
RUN apt install -y apache2-utils 
RUN apt clean
WORKDIR /opt
COPY ./index.html /usr/share/apache2/index.html
ENTRYPOINT [ "apache2ctl", "-DFOREGROUND" ]