#!/usr/bin/env bash

docker build --file 1.14/Dockerfile -t cimg/go:1.14.1  -t cimg/go:1.14 .
docker build --file 1.14/node/Dockerfile -t cimg/go:1.14.1-node  -t cimg/go:1.14-node .
