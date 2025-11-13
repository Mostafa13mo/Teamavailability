#!/bin/bash
set -e

echo "Deleting K8s resources..."
kubectl delete -f k8s/ingress.yaml --ignore-not-found
kubectl delete -f k8s/service.yaml --ignore-not-found
kubectl delete -f k8s/deployment.yaml --ignore-not-found
kubectl delete -f k8s/pv.yaml --ignore-not-found
echo "Cleanup done."