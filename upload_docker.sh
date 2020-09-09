#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=4th-image

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username zeyadeata
docker tag 4th-image  zeyadeata/4th-image

# Step 3:
# Push image to a docker repository
docker push zeyadeata/4th-image
