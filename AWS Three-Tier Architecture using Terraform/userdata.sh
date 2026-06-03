#!/bin/bash

yum update -y

yum install httpd -y

systemctl start httpd

systemctl enable httpd

echo "Welcome to Three Tier App" > /var/www/html/index.html