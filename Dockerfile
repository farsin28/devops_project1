FROM centos:latest
MAINTAINER farsin28@gmail.com

RUN yum clean all \
    && yum install -y epel-release \
    && yum install -y httpd \
                      zip \
                      unzip \
    && yum clean all \
    && rm -rf /var/cache/yum/* \
    && ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/ \
    && WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80



