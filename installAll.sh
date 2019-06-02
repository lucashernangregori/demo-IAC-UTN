#!/bin/bash
./ansibleBootstraper.sh
ansible-playbook dockerInstall.yml
ansible-playbook metricbeat_linux.yml
ansible-playbook teamcityInstall.yml -l servicios
ansible-playbook elasticSearchKibanaInstall.yml -l servicios
ansible-playbook dotnetcoreInstall.yml -l webserver