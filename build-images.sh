#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.19/Dockerfile -t cimg/go:1.19.11 -t cimg/go:1.19 --platform linux/amd64 .
docker build --file 1.19/node/Dockerfile -t cimg/go:1.19.11-node -t cimg/go:1.19-node --platform linux/amd64 .
docker build --file 1.19/browsers/Dockerfile -t cimg/go:1.19.11-browsers -t cimg/go:1.19-browsers --platform linux/amd64 .
