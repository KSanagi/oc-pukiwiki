FROM centos/httpd-24-centos7

COPY index.html /var/www/html/
RUN wget https://osdn.jp/projects/pukiwiki/downloads/64807/pukiwiki-1.5.1_utf8.zip
CMD ["/usr/bin/run-httpd"]
#CMD tail -f /dev/null
