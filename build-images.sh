#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.19/Dockerfile -t cimg/go:1.19.9 -t cimg/go:1.19 --platform linux/amd64 .
docker build --file 1.19/node/Dockerfile -t cimg/go:1.19.9-node -t cimg/go:1.19-node --platform linux/amd64 .
docker build --file 1.19/browsers/Dockerfile -t cimg/go:1.19.9-browsers -t cimg/go:1.19-browsers --platform linux/amd64 .
docker build --file 1.20/Dockerfile -t cimg/go:1.20.4 -t cimg/go:1.20 --platform linux/amd64 .
docker build --file 1.20/node/Dockerfile -t cimg/go:1.20.4-node -t cimg/go:1.20-node --platform linux/amd64 .
docker build --file 1.20/browsers/Dockerfile -t cimg/go:1.20.4-browsers -t cimg/go:1.20-browsers --platform linux/amd64 .
