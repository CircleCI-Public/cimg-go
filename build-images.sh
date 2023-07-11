#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.20/Dockerfile -t cimg/go:1.20.6 -t cimg/go:1.20 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.20/node/Dockerfile -t cimg/go:1.20.6-node -t cimg/go:1.20-node --push .
docker buildx build --platform=linux/amd64 --file 1.20/browsers/Dockerfile -t cimg/go:1.20.6-browsers -t cimg/go:1.20-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/Dockerfile -t cimg/go:1.19.10 -t cimg/go:1.19 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/node/Dockerfile -t cimg/go:1.19.10-node -t cimg/go:1.19-node --push .
docker buildx build --platform=linux/amd64 --file 1.19/browsers/Dockerfile -t cimg/go:1.19.10-browsers -t cimg/go:1.19-browsers --push .
