FROM centos:latest
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/free-css-templates/page265/woodo /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80


