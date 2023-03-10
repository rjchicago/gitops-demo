#!/bin/sh
set -Eeou pipefail

( exec -a pf8888 kubectl port-forward svc/argocd-server -n argocd 8888:443 > /dev/null ) &
