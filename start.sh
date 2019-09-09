#!/usr/bin/env bash

sudo minikube start --vm-driver=none --kubernetes-version=v1.15.3
sudo chown -R $USER:$USER ~/.kube ~/.minikube

sudo minikube addons enable registry

helm init

if [ ! -f /etc/docker/daemon.json ]; then
  cat > daemon.json <<< '{ "insecure-registries" : ["'"$(minikube ip)"':5000"] }'
  sudo mv daemon.json /etc/docker
  sudo systemctl restart docker.socket
fi
