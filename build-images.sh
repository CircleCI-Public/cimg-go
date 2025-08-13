#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.25/Dockerfile -t cimg/go:1.25.0 -t cimg/go:1.25 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.25/node/Dockerfile -t cimg/go:1.25.0-node -t cimg/go:1.25-node --push .
docker buildx build --platform=linux/amd64 --file 1.25/browsers/Dockerfile -t cimg/go:1.25.0-browsers -t cimg/go:1.25-browsers --push .
