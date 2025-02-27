
FROM ubuntu:20.04
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
ENV department=dev
RUN apt-get install apache2 -y
RUN apt install -y apache2-utils 
RUN apt clean
WORKDIR /opt
VOLUME [ "/data" ]
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /opt/
COPY ./index.html /var/www/html/index.html
EXPOSE 8080
CMD [ "apache2ctl", "-DFOREGROUND" ]
ENTRYPOINT [ "apache2ctl", "-DFOREGROUND" ]

