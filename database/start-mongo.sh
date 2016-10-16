#!/bin/sh
set -e

DOCKER_NAME="mongodb"

#Stop and rm running containers
for container_id in $(docker ps  --filter="name=$DOCKER_NAME" -q);
	do docker stop $container_id && docker rm $container_id;
done

#rm stopped containers
for container_id in $(docker ps  --filter="name=$DOCKER_NAME" -q -a);
	do docker rm $container_id;
done

# Build or force rebuild of the mongo image
docker build -t $DOCKER_NAME:latest .

# Run container from mongo image
docker run --name $DOCKER_NAME $DOCKER_NAME
