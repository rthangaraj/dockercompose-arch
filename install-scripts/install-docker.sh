#!/bin/bash

# Exit if and error and special charater parameters as Erroe=r
set -eu

# Docker Install scritp
sudo apt remove --yes docker docker-engine docker.io \
    && sudo apt update \
    && sudo apt --yes --no-install-recommends install \
        apt-transport-https \
        ca-certificates \
    && sudo apt-get install wget -y
# Use the official docker install script
sudo wget -qO- https://get.docker.com/ | sh

# Add docker User into Sudoers group
sudo apt update \
    && sudo usermod --append --groups docker "$USER" \
    && sudo systemctl enable docker \
    && printf '\nDocker installed successfully\n\n'

printf 'Waiting for Docker to start...\n\n'
sleep 4

# Docker Compose installation
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "Docker COmnpose Installed successfully"
