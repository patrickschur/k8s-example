#!/usr/bin/env bash

docker build -t $(minikube ip):5000/example .
docker push $(minikube ip):5000/example
