#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.17/Dockerfile -t cimg/go:1.17.13 -t cimg/go:1.17 .
docker build --file 1.17/node/Dockerfile -t cimg/go:1.17.13-node -t cimg/go:1.17-node .
docker build --file 1.17/browsers/Dockerfile -t cimg/go:1.17.13-browsers -t cimg/go:1.17-browsers .
docker build --file 1.18/Dockerfile -t cimg/go:1.18.5 -t cimg/go:1.18 .
docker build --file 1.18/node/Dockerfile -t cimg/go:1.18.5-node -t cimg/go:1.18-node .
docker build --file 1.18/browsers/Dockerfile -t cimg/go:1.18.5-browsers -t cimg/go:1.18-browsers .
