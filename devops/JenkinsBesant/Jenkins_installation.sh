#!/bin/bash

# Install the JDK
sudo apt update
sudo apt install openjdk-11-jdk -y

# Add the Jenkins repository to the system
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the package list
sudo apt update

# Install Jenkins
sudo apt install jenkins -y

# Start the Jenkins service
sudo systemctl start jenkins

# Enable the Jenkins service to start at boot
sudo systemctl enable jenkins

echo "Jenkins has been installed successfully"
