#!/bin/bash
sudo yum -y update
sudo yum -y install gcc
sudo yum -y install python3-devel
sudo yum -y install git
sudo pip3 install locust

git clone https://github.com/odobenuskr/aws-linux-locust.git
cd aws-linux-locust
locust -f locust-load-test.py
