
#!/usr/bin/env bash

set -e

kubectl apply -f namespace.yaml
kubectl apply -f secret.yaml
kubectl apply -f postgres.yaml
kubectl apply -f fastapi.yaml

kubectl get pods -n my-web
kubectl get svc -n my-web
