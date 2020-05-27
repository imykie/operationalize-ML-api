#!usr/bin/env bash

#docker path, image from docker hub
dockerpath="imykel/operationalized-ml-api"

#kubectl run ml-api --image=$dockerpath --port=80
kubectl run flaskapp --generator=run-pod/v1 --image=$dockerpath --port=80 --labels ml-api=flaskapp

# List k8s pods
kubectl get pods

# Forward the container port to host 
kubectl port-forward flaskapp 8000:80
