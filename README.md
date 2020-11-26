<h2>Kubernetes e hpa</h2>

Testando autoscaler:

``` bash
> kubectl run -it loader --image=busybox /bin/sh
> while true; do wget -q -O- http://go-hpa-service.default.svc.cluster.local:8000; done;
> watch kubectl get hpa
```

Imagem Docker: https://hub.docker.com/r/robsantossilva/go-hpa
