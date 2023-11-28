#!/bin/bash
set -e
set -u
set -o pipefail

# Log in to Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Build the Docker image
docker build -t "$DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG" .

# # Push the Docker image to Docker Hub
# docker push "$DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG"

# # Log out from Docker Hub
# docker logout
