#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.18/Dockerfile -t cimg/go:1.18 .
docker build --file 1.18/node/Dockerfile -t cimg/go:1.18-node .
docker build --file 1.18/browsers/Dockerfile -t cimg/go:1.18-browsers .
