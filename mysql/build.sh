#!/bin/sh
VERSION=1.0
IMAGE="centinel-db"
TAG="$IMAGE:$VERSION"

echo "Creating image $TAG..."

docker build -t ${TAG} .
IMAGE_ID=$(docker images | grep $IMAGE | awk '{print $3}')

echo "Registrint image $TAG..."
docker tag -f ${TAG} "localhost:5000/$TAG"
docker push "localhost:5000/$TAG"

echo "Deleting image ($IMAGE_ID) $TAG..."
docker rmi -f ${IMAGE_ID}
docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")
docker pull "localhost:5000/$TAG"
