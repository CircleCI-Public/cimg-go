#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.18/Dockerfile -t cimg/go:1.18.9 -t cimg/go:1.18 .
docker build --file 1.18/node/Dockerfile -t cimg/go:1.18.9-node -t cimg/go:1.18-node .
docker build --file 1.18/browsers/Dockerfile -t cimg/go:1.18.9-browsers -t cimg/go:1.18-browsers .
docker build --file 1.19/Dockerfile -t cimg/go:1.19.4 -t cimg/go:1.19 .
docker build --file 1.19/node/Dockerfile -t cimg/go:1.19.4-node -t cimg/go:1.19-node .
docker build --file 1.19/browsers/Dockerfile -t cimg/go:1.19.4-browsers -t cimg/go:1.19-browsers .
