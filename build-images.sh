#!/usr/bin/env bash

docker build --file 1.14/Dockerfile -t cimg/go:1.14.10  -t cimg/go:1.14 .
docker build --file 1.14/node/Dockerfile -t cimg/go:1.14.10-node  -t cimg/go:1.14-node .
docker build --file 1.14/browsers/Dockerfile -t cimg/go:1.14.10-browsers  -t cimg/go:1.14-browsers .
docker build --file 1.15/Dockerfile -t cimg/go:1.15.3  -t cimg/go:1.15 .
docker build --file 1.15/node/Dockerfile -t cimg/go:1.15.3-node  -t cimg/go:1.15-node .
docker build --file 1.15/browsers/Dockerfile -t cimg/go:1.15.3-browsers  -t cimg/go:1.15-browsers .
