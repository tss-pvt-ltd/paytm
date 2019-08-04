#!/bin/bash      
#title           : Install Apache Tomcat Server
#description     : Execute this script as root user
#author		     : Mthun Technologies
#date            : 08112012
#version         : 1.0    
#usage		     : sh tomcatInstall.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226 | devopstrainingblr@gmail.com
​
sudo yum install wget unzip -y
cd /opt
sudo wget https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.zip
cd /opt/apache-tomcat-9.0.21/bin
sudo chmod u+x /opt/apache-tomcat-9.0.21/bin/*.sh
​
#sh /opt/apache-tomcat-9.0.16/bin/startup.sh
​
sudo ln -s /opt/apache-tomcat-9.0.21/bin/startup.sh /usr/bin/startTomcat
sudo ln -s /opt/apache-tomcat-9.0.21/bin/shutdown.sh /usr/bin/stopTomcat
​
#ps -fax | grep tomcat
#netstat -tunlap
#vi /opt/apache-tomcat-9.0.21/webapps/manager/META-INF/context.xml
#Comment the below lines
#<!-- <Valve className="org.apache.catalina.valves.RemoteAddrValve"
#         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->
		 
sudo startTomcat
#stopTomcat
