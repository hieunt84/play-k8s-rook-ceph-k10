#!/bin/sh

# add repo
helm repo add kasten https://charts.kasten.io/
helm repo update

# install chart
kubectl create namespace kasten-io
helm install k10 kasten/k10 \
--namespace=kasten-io \
--version 4.5.1 \
--set externalGateway.create=true \
--set auth.basicAuth.enabled=true \
--set auth.basicAuth.htpasswd='admin:{SHA}m04Br+QJKkP4TQq/6bm5WCDk91I='

# Config Storage for K10
kubectl annotate volumesnapshotclass csi-rbdplugin-snapclass k10.kasten.io/is-snapshot-class=true

# account login: admin/Chualanh@xxx


