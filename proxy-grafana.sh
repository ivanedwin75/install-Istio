#!/bin/sh

aws eks --region us-east-1 update-kubeconfig --name Cluster_mapa-de-crecimiento --profile dev
POD_NAME=$(kubectl get pods --namespace istio-system -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=grafana" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace istio-system port-forward $POD_NAME 3080
$SHELL
