#! /usr/bin/env bash

sudo apt-mark hold kubelet

sudo kubeadm init --config $HOME/Repos/bare-k8s/kubeadm-config.yaml

sudo apt-mark unhold kubelet
