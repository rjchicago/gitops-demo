# GUI Infrastructure

## Convention

Helm Chart + Values file per cluster.

Example:

``` txt
example-app
  + ...
  + Chart.yaml
  + values.local.yaml
  + values.dev-ord-private.yaml
  + values.dev-ord-public.yaml
  + values.production-ord-private.yaml
  + values.production-ord-public.yaml
  + values.production-sjc-private.yaml
  + values.production-sjc-public.yaml
  + values.yaml

```
