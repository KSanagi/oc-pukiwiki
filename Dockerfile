FROM centos/httpd-24-centos7

COPY index.html /var/www/html/

RUN yum -y install wget unzip
RUN wget https://osdn.jp/projects/pukiwiki/downloads/64807/pukiwiki-1.5.1_utf8.zip
RUN unzip pukiwiki-1.5.1_utf8.zip
RUN ln -s pukiwiki-1.5.1_utf8 /var/www/html/pukiwiki

CMD ["/usr/bin/run-httpd"]
#CMD tail -f /dev/null
