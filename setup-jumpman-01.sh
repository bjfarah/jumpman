#!/bin/bash
# Written by Benjamim "BJ" Farah for Ubuntu - Jun/2024
# setup-jumpman-01.sh
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
