# operationalize-ML-api
Operationalized Machine Learning API with Docker, Kubernetes, Circleci

[![CircleCI](https://circleci.com/gh/MichaelOlatunji/operationalize-ML-api.svg?style=svg)](https://circleci.com/gh/MichaelOlatunji/operationalize-ML-api)

## Setup the Environment

* Run `make setup` to create a virtual environment and source into it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Prediction Testing

With the app running locally, execute: `./make_prediction.sh`

### Deploying App

* Run `./upload_docker.sh username password username/docker-repo`