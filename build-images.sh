#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.19/Dockerfile -t cimg/go:1.19.0 -t cimg/go:1.19 .
docker build --file 1.19/node/Dockerfile -t cimg/go:1.19.0-node -t cimg/go:1.19-node .
docker build --file 1.19/browsers/Dockerfile -t cimg/go:1.19.0-browsers -t cimg/go:1.19-browsers .
