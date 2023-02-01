#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.20/Dockerfile -t cimg/go:1.20.0 -t cimg/go:1.20 .
docker build --file 1.20/node/Dockerfile -t cimg/go:1.20.0-node -t cimg/go:1.20-node .
docker build --file 1.20/browsers/Dockerfile -t cimg/go:1.20.0-browsers -t cimg/go:1.20-browsers .
