
# FROM ubuntu:20.04
# RUN apt-get update
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get install apache2 -y
# RUN apt install -y apache2-utils 
# RUN apt clean
# WORKDIR /opt
# COPY ./index.html /usr/share/apache2/index.html
# ENTRYPOINT [ "apache2ctl", "-DFOREGROUND" ]




FROM ubuntu:20.04
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
ENV department=dev
RUN apt-get install apache2 -y
RUN apt install -y apache2-utils 
RUN apt clean
WORKDIR /opt
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip /opt
COPY ./index.html /usr/share/apache2/index.html
EXPOSE 8080
ENTRYPOINT [ "apache2ctl", "-DFOREGROUND" ]