#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

<<<<<<< HEAD
<<<<<<< HEAD
docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.21/Dockerfile -t cimg/go:1.21.1 -t cimg/go:1.21 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.21/node/Dockerfile -t cimg/go:1.21.1-node -t cimg/go:1.21-node --push .
docker buildx build --platform=linux/amd64 --file 1.21/browsers/Dockerfile -t cimg/go:1.21.1-browsers -t cimg/go:1.21-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.20/Dockerfile -t cimg/go:1.20.8 -t cimg/go:1.20 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.20/node/Dockerfile -t cimg/go:1.20.8-node -t cimg/go:1.20-node --push .
docker buildx build --platform=linux/amd64 --file 1.20/browsers/Dockerfile -t cimg/go:1.20.8-browsers -t cimg/go:1.20-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/Dockerfile -t cimg/go:1.19.13 -t cimg/go:1.19 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/node/Dockerfile -t cimg/go:1.19.13-node -t cimg/go:1.19-node --push .
docker buildx build --platform=linux/amd64 --file 1.19/browsers/Dockerfile -t cimg/go:1.19.13-browsers -t cimg/go:1.19-browsers --push .
=======
docker build --file 1.20/Dockerfile -t cimg/go:1.20.1 -t cimg/go:1.20 .
docker build --file 1.20/node/Dockerfile -t cimg/go:1.20.1-node -t cimg/go:1.20-node .
docker build --file 1.20/browsers/Dockerfile -t cimg/go:1.20.1-browsers -t cimg/go:1.20-browsers .
docker build --file 1.19/Dockerfile -t cimg/go:1.19.6 -t cimg/go:1.19 .
docker build --file 1.19/node/Dockerfile -t cimg/go:1.19.6-node -t cimg/go:1.19-node .
docker build --file 1.19/browsers/Dockerfile -t cimg/go:1.19.6-browsers -t cimg/go:1.19-browsers .
>>>>>>> 6a878e9 (Publish v1.20.1 and v1.19.6. [release])
=======
docker build --file 1.20/Dockerfile -t cimg/go:1.20.2 -t cimg/go:1.20 .
docker build --file 1.20/node/Dockerfile -t cimg/go:1.20.2-node -t cimg/go:1.20-node .
docker build --file 1.20/browsers/Dockerfile -t cimg/go:1.20.2-browsers -t cimg/go:1.20-browsers .
docker build --file 1.19/Dockerfile -t cimg/go:1.19.7 -t cimg/go:1.19 .
docker build --file 1.19/node/Dockerfile -t cimg/go:1.19.7-node -t cimg/go:1.19-node .
docker build --file 1.19/browsers/Dockerfile -t cimg/go:1.19.7-browsers -t cimg/go:1.19-browsers .
>>>>>>> 973b590 (Publish v1.20.2 and v1.19.7. [release])
