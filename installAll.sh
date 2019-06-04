#!/bin/bash
./ansibleBootstraper.sh
ansible-playbook dockerInstall.yml
ansible-playbook metricbeat_linux.yml
ansible-playbook teamcityInstall.yml -l servicios
ansible-playbook elasticSearchKibanaInstall.yml -l servicios
ansible-playbook dotnetcoreInstall.yml -l webserver
ansible-playbook filebeat_linux.yml -l webserver
ansible all -l 10.0.0.60 -m shell -a "docker cp tcserver:/opt/teamcity/logs/teamcity-server.log /root/tc.log"
ansible all -l 10.0.0.60 -m shell -a "tail /root/tc.log"