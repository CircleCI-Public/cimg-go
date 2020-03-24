#!/usr/bin/env bash

docker build --file 1.13/Dockerfile -t cimg/go:1.13.9  -t cimg/go:1.13 .
docker build --file 1.13/node/Dockerfile -t cimg/go:1.13.9-node  -t cimg/go:1.13-node .
