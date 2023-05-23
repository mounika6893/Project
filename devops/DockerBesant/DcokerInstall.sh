#!/bin/bash

# Update package index
sudo apt update

# Install prerequisites
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index again
sudo apt update

# Install Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Add current user to the "docker" group so that you can run Docker commands without sudo
sudo usermod -aG docker $USER

# Verify that Docker is installed and running
sudo docker run hello-world