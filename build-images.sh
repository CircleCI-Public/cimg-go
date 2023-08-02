#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/Dockerfile -t 483285841698.dkr.ecr."$AWS_DEFAULT_REGION".amazonaws.com/go:1.19.11 -t 483285841698.dkr.ecr."$AWS_DEFAULT_REGION".amazonaws.com/go:1.19 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/node/Dockerfile -t 483285841698.dkr.ecr."$AWS_DEFAULT_REGION".amazonaws.com/go:1.19.11-node -t 483285841698.dkr.ecr."$AWS_DEFAULT_REGION".amazonaws.com/go:1.19-node --push .
docker buildx build --platform=linux/amd64 --file 1.19/browsers/Dockerfile -t 483285841698.dkr.ecr."$AWS_DEFAULT_REGION".amazonaws.com/go:1.19.11-browsers -t 483285841698.dkr.ecr."$AWS_DEFAULT_REGION".amazonaws.com/go:1.19-browsers --push .
