#!/bin/bash

component=$1
environment=$2
app_version=$3 #dont use env here, it is reserved in linux
sudo yum install python3.11-devel -y 
sudo yum python3.11-pip -y
pip3.11 install ansible botocore boto3
export PATH=$PATH:/usr/local/bin
ansible-pull -U https://github.com/SowRach/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment -e app_version=$app_version main-tf.yaml