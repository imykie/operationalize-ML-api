#!usr/bin/env bash

#docker path, image from docker hub
dockerpath="imykel/operationalized-ml-api"

#kubectl run ml-api --image=$dockerpath --port=80
kubectl run ml-microservice --generator=run-pod/v1 --image=imykel/operationalized-ml-api --port=80 --labels ml-api=ml-microservice

# List k8s pods
kubectl get pods

# Forward the container port to host 
kubectl port-forward ml-api 8000:80
