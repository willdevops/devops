# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER John Kidd “jkidd@kiddcorp.com"
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container'>/usr/share/nginx/html/index.html
#RUN ["apt-get", "install","-y","nginx"]
#CMD []
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
#ONBUILD 

EXPOSE 80