FROM centos:latest
RUN yum install -y httpd \
wget \
zip \
unzip
RUN wget https://freewebsitetemplates.com/website/animal/ -O /var/www/html/index.html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

