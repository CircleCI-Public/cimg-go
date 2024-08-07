#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.22/Dockerfile -t cimg/go:1.22.6 -t cimg/go:1.22 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.22/node/Dockerfile -t cimg/go:1.22.6-node -t cimg/go:1.22-node --push .
docker buildx build --platform=linux/amd64 --file 1.22/browsers/Dockerfile -t cimg/go:1.22.6-browsers -t cimg/go:1.22-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.21/Dockerfile -t cimg/go:1.21.13 -t cimg/go:1.21 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.21/node/Dockerfile -t cimg/go:1.21.13-node -t cimg/go:1.21-node --push .
docker buildx build --platform=linux/amd64 --file 1.21/browsers/Dockerfile -t cimg/go:1.21.13-browsers -t cimg/go:1.21-browsers --push .
