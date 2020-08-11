#!/usr/bin/env bash

docker build --file 1.15/Dockerfile -t cimg/go:1.15 .
docker build --file 1.15/node/Dockerfile -t cimg/go:1.15-node .
