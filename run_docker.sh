#!usr/bin/env bash

# Build Docker Image
docker build --tag=ml-api .

# List Images
docker image ls

# Run Docker image
# Runs on http://localhost:8000
docker run -p 8000:80 ml-api

# push to docker registry
# docker tag ml-api imykel/operationalized-ml-api
# docker push imykel/operationalized-ml-api