FROM centos/httpd-24-centos7

COPY index.html /var/www/html/

CMD ["/usr/bin/run-httpd"]
#CMD tail -f /dev/null
