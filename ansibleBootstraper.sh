#!/bin/bash
apt update
apt install -y python python-pip
pip install pywinrm
apt-get install -y software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install -y ansible
export ANSIBLE_INVENTORY=/etc/ansible/hosts
echo "cosas aparte"
apt install -y htop
echo "
# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix
" > /home/ubuntu/.tmux.conf
echo "
[principal]
10.0.0.50
[servicios]
10.0.0.60
[webserver]
10.0.0.70
" > /etc/ansible/hosts