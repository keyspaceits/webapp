FROM centos:latest
MAINTAINER the centos project
RUN yum -y install httpd
RUN yum -y install git
RUN yum -y install openssh-server
COPY index.html /var/www/html
EXPOSE 80
CMD /usr/sbin/httpd -D FOREGROUND
