#!/usr/bin/env bash

docker build --file 1.13/Dockerfile -t cimg/go:1.13.10  -t cimg/go:1.13 .
docker build --file 1.13/node/Dockerfile -t cimg/go:1.13.10-node  -t cimg/go:1.13-node .
