setup:
	python3 -m venv ~/.devops_ml_api
	source ~/.devops_ml_api

install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

lint:
	hadolint --ignore 3000 --ignore 3013
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint 