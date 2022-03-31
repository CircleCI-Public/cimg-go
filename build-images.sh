#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.10/Dockerfile -t cimg/go:1.10.8  -t cimg/go:1.10 .
docker build --file 1.10/node/Dockerfile -t cimg/go:1.10.8-node  -t cimg/go:1.10-node .
docker build --file 1.10/browsers/Dockerfile -t cimg/go:1.10.8-browsers  -t cimg/go:1.10-browsers .
