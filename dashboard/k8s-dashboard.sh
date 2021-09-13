#!/usr/bin/env bash

helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/

helm repo update

helm install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard -n kubernetes-dashboard --create-namespace -f "$(dirname "$0")/values.yaml"

kubectl apply -f "$(dirname "$0")/dashboard-admin.yaml" 
# NAME: tidu-k8s-dashboard
# LAST DEPLOYED: Sun Sep 12 01:47:20 2021
# NAMESPACE: kubernetes-dashboard
# STATUS: deployed
# REVISION: 1
# TEST SUITE: None
# NOTES:
# *********************************************************************************
# *** PLEASE BE PATIENT: kubernetes-dashboard may take a few minutes to install ***
# *********************************************************************************

# Get the Kubernetes Dashboard URL by running:
#   export POD_NAME=$(kubectl get pods -n kubernetes-dashboard -l "app.kubernetes.io/name=kubernetes-dashboard,app.kubernetes.io/instance=tidu-k8s-dashboard" -o jsonpath="{.items[0].metadata.name}")
#   echo https://127.0.0.1:8443/
#   kubectl -n kubernetes-dashboard port-forward $POD_NAME 8443:8443
