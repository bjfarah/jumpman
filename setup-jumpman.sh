#!/bin/bash
# Written by Benjamim "BJ" Farah for Ubuntu - Jun/2024
# setup-jumpman.sh
# Install packages
sudo apt-get update
sudo snap install git
sudo apt install -y unzip
sudo apt install -y python3
sudo apt install -y pip
sudo snap install git
sudo snap install docker
sudo snap install helm --classic
sudo snap install kustomize
sudo snap install yq
sudo snap install jq
sudo snap install terraform --classic
sudo snap install kubectl --classic
python3 -m pip install -r requirements.txt
# Add repositories
helm repo add jetstack https://charts.jetstack.io
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
# SAS Viya Deployment Tools
mkdir ~/sas-deployment-tools
cd ~/sas-deployment-tools
# Azure IaC Infrastructure Provisioning 
git clone https://github.com/sassoftware/viya4-iac-azure.git
# AWS IaC Infrastructure Provisioning 
git clone https://github.com/sassoftware/viya4-iac-aws.git
# GCP IaC Infrastructure Provisioning 
git clone https://github.com/sassoftware/viya4-iac-gcp.git
# OpenSource IaC Infrastructure Provisioning 
git clone https://github.com/sassoftware/viya4-iac-k8s.git
# Validate Provisioned Resources and Admin Playbooks 
git clone https://github.com/sassoftware/viya4-ark.git
# Monitoring Deployment
git clone https://github.com/sassoftware/viya4-monitoring-kubernetes.git
# Python and Viya Tools for Admin Tasks
git clone https://github.com/sassoftware/pyviyatools.git
# Viya 4 Deployment Assets
git clone https://github.com/sassoftware/viya4-deployment.git
# Viya 4 CLI for ORDER Assets Download
git clone https://github.com/sassoftware/viya4-orders-cli.git
# Get SAS Viya Orders CLI Utility
wget https://github.com/sassoftware/viya4-orders-cli/releases/download/1.6.0/viya4-orders-cli_linux_amd64
# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
# Add Azure DevOps Extension
az extension add --name azure-devops
































































































































































