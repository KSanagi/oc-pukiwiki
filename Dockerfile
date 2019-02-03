FROM centos:centos7.6.1810

RUN yum -y update && yum clean all
RUN yum -y install httpd php patch wget unzip

COPY httpd.conf /etc/httpd/conf/ 
RUN wget https://osdn.jp/projects/pukiwiki/downloads/64807/pukiwiki-1.5.1_utf8.zip
RUN unzip pukiwiki-1.5.1_utf8.zip -d /var/www/html/
RUN mv /var/www/html/pukiwiki-1.5.1_utf8 /var/www/html/pukiwiki
RUN chmod -R 777 /var/www/html/pukiwiki
RUN sed -i -e "s/upload_max_filesize = 2M/upload_max_filesize = 100M/g" /etc/php.ini
RUN sed -i -e "s/post_max_size = 8M/post_max_size = 100M/g" /etc/php.ini

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

