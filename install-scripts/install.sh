#!/bin/bash

# Install git application
sudo apt install git unzip -y

# Download Terraform and install
cd /tmp/
wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
unzip terraform*
sudo mv terraform /usr/local/bin/
terraform -v
