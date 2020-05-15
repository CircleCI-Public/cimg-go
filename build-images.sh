#!/usr/bin/env bash

docker build --file 1.13/Dockerfile -t cimg/go:1.13.11  -t cimg/go:1.13 .
docker build --file 1.13/node/Dockerfile -t cimg/go:1.13.11-node  -t cimg/go:1.13-node .
docker build --file 1.14/Dockerfile -t cimg/go:1.14.3  -t cimg/go:1.14 .
docker build --file 1.14/node/Dockerfile -t cimg/go:1.14.3-node  -t cimg/go:1.14-node .
