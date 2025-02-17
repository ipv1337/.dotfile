#!/usr/bin/env bash

# ~/.minikube
#minikube start --driver=qemu2 --container-runtime=containerd --cni=bridge --network=socket_vmnet --listen-address=0.0.0.0 --cpus=8 --memory=8192
#minikube start --driver=qemu2 --container-runtime=containerd --cni=bridge --listen-address=0.0.0.0 --cpus=8 --memory=8192
minikube start --driver=qemu --network=socket_vmnet --container-runtime=containerd --cni=bridge --listen-address=0.0.0.0 --cpus=8 --memory=8192 --alsologtostderr -v=4
