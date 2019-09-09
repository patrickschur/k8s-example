# k8s-example

The goal of this project is to quickly set up a fully functional single node cluster without having any knowledge about Kubernetes. Perfect for people who know just enough about Docker but yet nothing about Kubernetes.

The only dependency is you already have a running GNU/Linux machine. I would recommend you to use a recent version of Ubuntu or Debian.

## Installation

First install all dependencies by executing `install.sh`. This will install `docker`, `minikube`, `kubectl` and `helm` if not already done. This may take a while.

```sh
./install.sh
```

Before we can continue, you have to reboot your system. Otherwise your user won't have permissions accessing docker. Then we can start our cluster by executing `start.sh`.

```sh
./start.sh
```

Now we should have a fully running single node kubernetes cluster running. This will also initialize `helm` for us and set up a local docker registry.

## Example

For a working live demo execute the following code.

```sh
./build.sh
kubectl run example --image=$(minikube ip):5000/example --port=3000
kubectl expose deployment example --type=NodePort
minikube service example
```

Now we should see how our default browser opens up and printing our message.

The next step would be to use `helm` for our deployment. To set up a private Helm repository we can execute `helm serve &`. Now whenever we package a new Helm Chart it's automatically deployed to our local Helm repository at `localhost:8879` and ready to install.

### Todo

- [ ] Add Ingress example
- [ ] Check SHA-2 checksums
- [ ] Improve uninstall script
- [ ] Add Helm Chart example
