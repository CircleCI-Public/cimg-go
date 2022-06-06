#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.17/Dockerfile -t cimg/go:1.17.11 -t cimg/go:1.17 .
docker build --file 1.17/node/Dockerfile -t cimg/go:1.17.11-node -t cimg/go:1.17-node .
docker build --file 1.17/browsers/Dockerfile -t cimg/go:1.17.11-browsers -t cimg/go:1.17-browsers .
