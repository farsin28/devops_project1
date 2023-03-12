FROM centos:latest

MAINTAINER farsin28@gmail.com

RUN yum update -y && \
    yum clean all && \
    rm -rf /var/cache/yum/* && \
    rm -rf /var/tmp/yum-* && \
    yum install -y httpd zip unzip && \
    yum clean all

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

WORKDIR /var/www/html/

RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
