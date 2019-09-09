#!/usr/bin/env bash

sudo minikube stop
sudo minikube delete

sudo rm /usr/local/bin/{helm,minikube,kubectl}
sudo rm -r ~/.{helm,minikube,kube}
