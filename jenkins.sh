#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install git java-1.8.0-openjdk maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
#amazon-linux-extras install java-openjdk11 -y
sudo yum install java-17-amazon-corretto -y
yum install jenkins -y
update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service
# if we get error like source is not support 5 use 7 or later then yum remove java* maven* -y
#and reinstall java and maven using yum install jav-1.8.0-ooenjdk maven -y select Linux2,t2.medium
# to give custom workspace in jenkins  --- mkdir leela --- cd leela--- /root/leela copy this one and paste in jenkins advanced
# cd / --- chown jenkins:jenkins root/ ---- chown jenkins:jenkins /root/leela
