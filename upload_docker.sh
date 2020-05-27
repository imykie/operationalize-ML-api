# push to docker registry

# login to docker
docker login --username=$1 --password=$2

# tag ml-api as docker repo name
docker tag ml-api imykel/operationalized-ml-api

# push to docker hub
docker push imykel/operationalized-ml-api