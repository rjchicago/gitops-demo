# Testing Locally

## Prerequisites

### Docker

[Docker](https://www.docker.com/) helps developers bring their ideas to life by conquering the complexity of app development.

``` sh
brew install --cask docker
```

> see [installation instructions](https://www.docker.com/get-started/) for additional options.

### K3D

[k3d](https://k3d.io/) is a lightweight wrapper to run [k3s](https://github.com/k3s-io/k3s) (Rancher Lab’s minimal Kubernetes distribution) in [docker](https://www.docker.com/).

``` sh
brew install k3d
```

### Helm

[Helm](https://helm.sh/): A package manager for [Kubernetes](https://kubernetes.io/).

``` sh
brew install helm
```

### KubeCtl

The Kubernetes command-line tool, [kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/), allows you to run commands against Kubernetes clusters.

``` sh
brew install kubectl
```

> see [installation instructions](https://kubernetes.io/docs/tasks/tools/) for additional options.

## Start

``` sh
# start k3d clusters
sh test/k3d-start.sh

# install argocd
sh test/install-argocd.sh

# port forward 8888
sh test/port-forward.sh

# change admin password to 'password'
sh test/change-password.sh

# open argocd ui
open http://localhost:8888

# lastly, apply meta
sh test/apply-meta.sh
```

## Debug

<https://helm.sh/docs/chart_template_guide/debugging/>

``` sh
helm lint -f ./meta/values.${ENV:-local}.yaml meta

# w/o cluster validation
helm template --debug meta | less

# w/ cluster validation (requires argocd installed)
helm install --debug --dry-run -n ${NAMESPACE:-argocd} -f ./meta/values.${ENV:-local}.yaml test ./meta | less
```

## Stop

``` sh
# kill port forward
pkill pf8888

# stop/delete k3d clusters
sh test/k3d-stop.sh
```
