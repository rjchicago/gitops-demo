#!/bin/sh
set -Eeuo pipefail

unset KUBECONFIG

k3d cluster create --config $(dirname $0)/k3d/private.yaml
k3d cluster create --config $(dirname $0)/k3d/public.yaml

sleep 2
kubectl config use-context k3d-private

echo -----------------------------------------
k3d cluster ls
echo -----------------------------------------
