  #!./bin/bash

  # Author: Patrick Mbada

  # Date: Feb 25 2022

echo "I'M INSTALLING JENKINS ON A CENTOS SERVER FOR THE DEVOPS TEAM"

sudo yum install java-1.8.0-openjdk-devel -y

sudo yum install wget -y

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo 

sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

sudo yum install jenkins -y

sudo systemctl start jenkins 

sudo systemctl status jenkins

sudo systemctl enable jenkins

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp 

sudo firewall-cmd --reload
sleep 5


echo "you will need this password"
sleep 5
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
