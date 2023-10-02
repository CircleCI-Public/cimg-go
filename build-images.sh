#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/Dockerfile -t ferriswh33l/node-dev:1.19.13 -t ferriswh33l/go:1.19 --push .
