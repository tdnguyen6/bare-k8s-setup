#! /usr/bin/env bash

helm repo add metallb https://metallb.github.io/metallb

helm repo update

helm install metallb metallb/metallb -f "$(dirname "$0")/values.yaml" -n metallb-system --create-namespace
