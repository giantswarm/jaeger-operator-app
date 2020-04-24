[![CircleCI](https://circleci.com/gh/giantswarm/jaeger-operator-app.svg?style=shield)](https://circleci.com/gh/giantswarm/jaeger-operator-app)

# jaeger-operator

This chart simply installs [jaeger operator](https://github.com/jaegertracing/jaeger-operator).

Jaeger operator can be used to deploy jaegers in different configurations by creating the "Jaeger" CR.
This chart can be used to deploy a demo Jaeger using the "all-in-one-approach". Check the config options
below.

## Configuration

| Option | Default | Decription |
|--------|---------|------------|
|deployAllInOneInstance | true | If true, an all-in-one Jaeger will be created using a CR. |
|jaeger.enableDebug | false | If all-in-one is created, enable debug mode for it. |
|jaeger.enableIngress | true | If all-in-one is created, enable Ingress object creation. |
|jaeger.instanceName | "jaeger-all-in-one-default" | If all-in-one is created, use this name for it. |

## Limitations

- can only be deployed once per cluster
- deployed in "namespace" mode by default; "cluster" mode is supported, but not recommended
  because of the security implications (check `Chart.yaml` for more info!)

## Installation

The application doesn't need any dependencies nor config, so it's sufficient to run:

```text
helm install -n tracing giantswarm-playground-catalog/jaeger-operator-app
```

## Compatibility

Tested on Giant Swarm release 11.2.0 on AWS with Kubernetes 1.16.3.
