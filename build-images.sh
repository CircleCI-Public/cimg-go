#!/usr/bin/env bash

docker build --file 1.14/Dockerfile -t cimg/go:1.14.9  -t cimg/go:1.14 .
docker build --file 1.14/node/Dockerfile -t cimg/go:1.14.9-node  -t cimg/go:1.14-node .
docker build --file 1.15/Dockerfile -t cimg/go:1.15.2  -t cimg/go:1.15 .
docker build --file 1.15/node/Dockerfile -t cimg/go:1.15.2-node  -t cimg/go:1.15-node .
