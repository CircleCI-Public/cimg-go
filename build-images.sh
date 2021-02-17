#!/usr/bin/env bash

docker build --file 1.16/Dockerfile -t cimg/go:1.16 .
docker build --file 1.16/node/Dockerfile -t cimg/go:1.16-node .
docker build --file 1.16/browsers/Dockerfile -t cimg/go:1.16-browsers .
