@echo off
kubectl apply -f kube-dashboard.yaml
kubectl proxy
cmd \k