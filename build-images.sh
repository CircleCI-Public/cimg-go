#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.24/Dockerfile -t cimg/go:1.24.6 -t cimg/go:1.24 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.24/node/Dockerfile -t cimg/go:1.24.6-node -t cimg/go:1.24-node --push .
docker buildx build --platform=linux/amd64 --file 1.24/browsers/Dockerfile -t cimg/go:1.24.6-browsers -t cimg/go:1.24-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.23/Dockerfile -t cimg/go:1.23.12 -t cimg/go:1.23 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.23/node/Dockerfile -t cimg/go:1.23.12-node -t cimg/go:1.23-node --push .
docker buildx build --platform=linux/amd64 --file 1.23/browsers/Dockerfile -t cimg/go:1.23.12-browsers -t cimg/go:1.23-browsers --push .
