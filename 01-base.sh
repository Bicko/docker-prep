#!/bin/bash

# Running as root?
if [ "$(id -u)" != "0" ] ; then
  echo "Please run this as root." 1>&2
  exit 1
fi

# Must update repo list first!
apt update

#Install Ansible, if not already installed
test ! -f /usr/local/bin/ansible && apt -y install python3-pip && pip3 install ansible

apt-get update

#Install git, if not already installed
test ! -f /usr/bin/git && apt -y install git

#Get the repo, if not already present
cd ~
test ! -d docker-prep && git clone https://github.com/Bicko/docker-prep.git

#Get latest yaml, etc
cd docker-prep && git pull

ansible-playbook ~/docker-prep/01-base.yml
