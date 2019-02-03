#!/bin/bash

oc new-project pukiwiki
oc adm policy add-scc-to-user anyuid -z default
oc import-image centos7 --from=docker.io/centos:7 --confirm
oc create imagestream pukiwiki
oc apply -f buildconfig.yml
oc apply -f pvc.yml
oc create service clusterip pukiwiki --tcp=80
oc expose service pukiwiki --hostname=localhost --path=/pukiwiki
