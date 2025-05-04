#!/bin/bash

# 1. Installer k3d si non présent
if ! command -v k3d &> /dev/null; then
  echo "Installing k3d..."
  curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
fi

# 2. Créer le cluster
k3d cluster create devops-cluster --agents 1 --port "8080:80@loadbalancer"

