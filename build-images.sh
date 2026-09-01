#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.27/Dockerfile -t cimg/go:1.27.1 -t cimg/go:1.27 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.27/node/Dockerfile -t cimg/go:1.27.1-node -t cimg/go:1.27-node --push .
docker buildx build --platform=linux/amd64 --file 1.27/browsers/Dockerfile -t cimg/go:1.27.1-browsers -t cimg/go:1.27-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.26/Dockerfile -t cimg/go:1.26.8 -t cimg/go:1.26 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.26/node/Dockerfile -t cimg/go:1.26.8-node -t cimg/go:1.26-node --push .
docker buildx build --platform=linux/amd64 --file 1.26/browsers/Dockerfile -t cimg/go:1.26.8-browsers -t cimg/go:1.26-browsers --push .
