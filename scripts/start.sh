#!/bin/bash
# ----------------------------------------------
# Ensure script runs from project root directory
# ----------------------------------------------
cd "$(dirname "$0")/.." || { echo "Failed to change directory"; exit 1; }
NAME=teamavail

echo "Building Docker image as $NAME:local..."

docker build -t $NAME:local .

echo "Creating K8s resources..."
kubectl apply -f k8s/pv.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml

minikube addons enable ingress

IP=$(minikube ip)
echo "Add this entry to your /etc/hosts if not already present:"
echo "$IP teamavail.local"
echo "Application will be available at: http://teamavail.local/"
