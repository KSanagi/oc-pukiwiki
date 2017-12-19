FROM centos/httpd-24-centos7

USER root
RUN yum -y install wget unzip
USER 1001
RUN wget https://osdn.jp/projects/pukiwiki/downloads/64807/pukiwiki-1.5.1_utf8.zip
RUN unzip pukiwiki-1.5.1_utf8.zip
RUN chown -R 1001:0 pukiwiki-1.5.1_utf8
RUN ln -s /opt/app-root/src/pukiwiki-1.5.1_utf8 /var/www/html/pukiwiki

CMD ["/usr/bin/run-httpd"]
