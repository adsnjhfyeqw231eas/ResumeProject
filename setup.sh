#!/bin/bash
sudo yum -y update
sleep 5
sudo yum -y install git httpd
sleep 5
sudo amazon-linux-extras install php8.0 mariadb10.5 -y
sleep 10
sudo systemctl restart httpd
sleep 3
sudo systemctl enable httpd
sleep 3
sudo mkdir /var/www/inc
sleep 2
cd /home/ec2-user/
git clone https://github.com/TridevGuha/RDS-S3-Ec2-lab1.git
sleep 5
sudo cp /home/ec2-user/RDS-S3-Ec2-lab1/dbinfo.inc /var/www/inc/
sleep 3
sudo cp /home/ec2-user/RDS-S3-Ec2-lab1/SamplePage.php /var/www/html/
sleep 3
