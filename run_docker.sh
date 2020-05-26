#!usr/bin/env bash

# Build Docker Image
docker build --tag=ml-api

# List Images
docker image ls

# Run Docker image
docker run -p 8000:80 ml-api