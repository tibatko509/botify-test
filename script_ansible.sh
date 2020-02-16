#!/bin/bash

sudo apt-get update
#sudo apt-get install git
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible
sudo ansible-playbook --connection=local ansible/deploy.yaml

