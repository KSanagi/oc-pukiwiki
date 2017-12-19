FROM centos/httpd-24-centos7

USER root
RUN yum -y install wget unzip
USER 1001
RUN wget https://osdn.jp/projects/pukiwiki/downloads/64807/pukiwiki-1.5.1_utf8.zip
RUN cp pukiwiki-1.5.1_utf8.zip /var/www/html
RUN unzip /var/www/html/pukiwiki-1.5.1_utf8.zip
RUN chown -R 1001:0 /var/www/html/pukiwiki-1.5.1_utf8
RUN ln -s /var/www/html/pukiwiki-1.5.1_utf8 /var/www/html/pukiwiki

CMD ["/usr/bin/run-httpd"]
