#!/usr/bin/env bash

docker build --file 1.17/Dockerfile -t cimg/go:1.17 .
docker build --file 1.17/node/Dockerfile -t cimg/go:1.17-node .
docker build --file 1.17/browsers/Dockerfile -t cimg/go:1.17-browsers .
