#!/bin/bash

# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
sudo apt update  && \
sudo apt install -y software-properties-common && \
sudo apt-add-repository -y --update ppa:ansible/ansible && \
sudo apt install -y ansible && \
echo "Installation completed successfully"
