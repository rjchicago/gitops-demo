#!/bin/sh
set -Eeou pipefail

export NAMESPACE=argocd

helm upgrade --install --namespace $NAMESPACE -f $(dirname $0)/../meta/values.${ENV:-local}.yaml --timeout 1m --wait ${NAMESPACE}-meta ./meta
