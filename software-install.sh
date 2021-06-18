#!/bin/bash

# Programming languages
sudo apt install nodejs golang make jq -y

# Tools

## yq
VERSION=v4.9.6
BINARY=yq_linux_arm
wget https://github.com/mikefarah/yq/releases/download/${VERSION}/${BINARY}.tar.gz -O - |  tar xz && mv ${BINARY} /usr/bin/yq

# kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/arm/kubectl

# kops

# helm

# argocd

# argo-rollouts

# argo-workflows

# awscli

# azurecli

# digitalocean
