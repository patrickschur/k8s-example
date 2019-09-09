#!/usr/bin/env bash

if [ ! -x /usr/bin/docker ]; then
    wget -qO- https://get.docker.com | sh
    sudo usermod -aG docker $USER
fi

if [ ! -x /usr/local/bin/minikube ]; then
    wget -qO minikube https://storage.googleapis.com/minikube/releases/v1.3.1/minikube-linux-amd64
    chmod +x minikube
    sudo mv minikube /usr/local/bin
fi

if [ ! -x /usr/local/bin/kubectl ]; then
    wget -q https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kubectl
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin
fi

if [ ! -x /usr/local/bin/helm ]; then
    wget -qO- https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz | tar -xz --strip-components=1 linux-amd64/helm
    chmod +x helm
    sudo mv helm /usr/local/bin
fi
