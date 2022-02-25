   #!/bin/bash

#author: Patrick Mbada
#date: Feb 25 2022

echo "I'M GENERATING A SCRIPT TO INSTALL SONARQUBE ON A CENTOS SERVER"
sleep 4

sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

sleep 4

cd /opt

sudo yum install wget -y  

sleep 4

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

sudo yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

sleep 4

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

./sonar.sh start

sleep 4

echo "SONARQUBE HAS BEEN SUCCESFULLY INSTALLED"
