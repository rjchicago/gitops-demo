#!/bin/sh
set -Eeou pipefail

export NAMESPACE=argocd

TEMP_PASSWORD=$(kubectl get secrets/argocd-initial-admin-secret -n $NAMESPACE  --template={{.data.password}} | base64 -D)
argocd login localhost:8888 --insecure --username admin --password $TEMP_PASSWORD
argocd account update-password --current-password $TEMP_PASSWORD --new-password password
