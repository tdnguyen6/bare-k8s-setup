#! /usr/bin/env bash

helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/

helm repo update

helm upgrade --install metrics-server \
metrics-server/metrics-server \
-n kube-system \
--set serviceAccount.name=tidu-k8s-metrics-sa,args={'--kubelet-preferred-address-types=InternalDNS,InternalIP,ExternalDNS,ExternalIP'}



# "metrics-server" already exists with the same configuration, skipping
# Hang tight while we grab the latest from your chart repositories...
# ...Successfully got an update from the "kubernetes-dashboard" chart repository
# ...Successfully got an update from the "metrics-server" chart repository
# ...Successfully got an update from the "nvdp" chart repository
# Update Complete. ⎈Happy Helming!⎈
# Release "metrics-server" does not exist. Installing it now.
# NAME: metrics-server
# LAST DEPLOYED: Sun Sep 12 02:05:13 2021
# NAMESPACE: kube-metrics
# STATUS: deployed
# REVISION: 1
# TEST SUITE: None
# NOTES:
# ***********************************************************************
# * Metrics Server                                                      *
# ***********************************************************************
#   Chart version: 3.5.0
#   App version:   0.5.0
#   Image tag:     k8s.gcr.io/metrics-server/metrics-server:v0.5.0
# ***********************************************************************