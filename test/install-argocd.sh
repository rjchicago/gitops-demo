#!/bin/sh
set -Eeou pipefail

export NAMESPACE=argocd

kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -
helm upgrade --install --namespace $NAMESPACE --timeout 5m --wait argocd $(dirname $0)/../infrastructure/private/argocd
