### Steps deployment
1. Step 1: config in values.yaml
```
configInline:
  address-pools:
   - name: default
     protocol: layer2
     addresses:
     - 172.20.10.210-172.20.10.220
```

2. Step 2: create namespace metallb-system
```
kubectl create ns metallb-system
```

3. Step 3: install
```
helm install metallb metallb/metallb -n metallb-system -f ./values.yaml
``` 

### Ref
```
- https://www.youtube.com/watch?v=2SmYjj-GFnE
- https://metallb.universe.tf/installation/
```

### Warning
```
Warning: resource configmaps/kube-proxy is missing the kubectl.kubernetes.io/last-applied-configuration annotation which is required by kubectl apply. kubectl apply should only be used on resources created declaratively by either kubectl create --save-config or kubectl apply. The missing annotation will be patched automatically.
configmap/kube-proxy configured

```