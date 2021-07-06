#!/bin/bash

hostname haproxy
echo "haproxy" > /etc/hostname
bash
sudo apt-get install -y haproxy >> /dev/null 2>&1
sudo cat /vagrant/haproxy_especs >> /etc/haproxy/haproxy.cfg
sudo systemctl restart haproxy