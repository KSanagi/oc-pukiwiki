FROM centos:7

RUN yum -y install httpd php

CMD tail -f /dev/null
