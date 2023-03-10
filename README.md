# GitOps

`GitOps` follows the [monorepo](https://en.wikipedia.org/wiki/Monorepo) pattern and is integrated with [Argo CD](https://argo-cd.readthedocs.io/en/stable/) to deploy infrastructure and applications to [Kubernetes](https://kubernetes.io/) clusters following [GitOps](https://www.gitops.tech/) principles.

## What is GitOps?

[GitOps](https://en.wikipedia.org/wiki/DevOps#GitOps) = [Infrastructure as Code](https://en.wikipedia.org/wiki/Infrastructure_as_code) ... *done right!*

> "GitOps: versioned CI/CD on top of declarative infrastructure. Stop scripting and start shipping."
\- *Kelsey Hightower*

### Resources

* <https://www.gitops.tech/>
* <https://about.gitlab.com/topics/gitops/>
* <https://www.weave.works/technologies/gitops/>
* <https://www.redhat.com/en/topics/devops/what-is-gitops>

## What is Argo CD?

Argo CD is a declarative, GitOps continuous delivery tool for Kubernetes.

> see the [Argo CD documentation](https://argo-cd.readthedocs.io/en/stable/)

## Testing

> see [readme](./test/README.md) in `./test` for steps to test locally.

## Infrastructure

> see [readme](./infrastructure/README.md) in `./infrastructure` for conventions and practices

## Applications

> see [readme](./applications/README.md) in `./applications` for conventions and practices
