#!/usr/bin/env bash

set -o nounset
set -o errexit
shopt -s nullglob

yum install -y http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y rpmdevtools rpmlint mock
usermod -a -G mock vagrant

mkdir /home/vagrant/logstash
cp -R /vagrant/* /home/vagrant/logstash
chown -R vagrant:vagrant /home/vagrant/logstash
