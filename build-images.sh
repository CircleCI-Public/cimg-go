#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.16/Dockerfile -t cimg/go:1.16.14  -t cimg/go:1.16 .
docker build --file 1.16/node/Dockerfile -t cimg/go:1.16.14-node  -t cimg/go:1.16-node .
docker build --file 1.16/browsers/Dockerfile -t cimg/go:1.16.14-browsers  -t cimg/go:1.16-browsers .
docker build --file 1.17/Dockerfile -t cimg/go:1.17.7  -t cimg/go:1.17 .
docker build --file 1.17/node/Dockerfile -t cimg/go:1.17.7-node  -t cimg/go:1.17-node .
docker build --file 1.17/browsers/Dockerfile -t cimg/go:1.17.7-browsers  -t cimg/go:1.17-browsers .
