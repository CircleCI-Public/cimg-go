#!/usr/bin/env bash

docker build --file 1.14/Dockerfile -t cimg/go:1.14.13  -t cimg/go:1.14 .
docker build --file 1.14/node/Dockerfile -t cimg/go:1.14.13-node  -t cimg/go:1.14-node .
docker build --file 1.14/browsers/Dockerfile -t cimg/go:1.14.13-browsers  -t cimg/go:1.14-browsers .
docker build --file 1.15/Dockerfile -t cimg/go:1.15.6  -t cimg/go:1.15 .
docker build --file 1.15/node/Dockerfile -t cimg/go:1.15.6-node  -t cimg/go:1.15-node .
docker build --file 1.15/browsers/Dockerfile -t cimg/go:1.15.6-browsers  -t cimg/go:1.15-browsers .
