#!/usr/bin/env bash

docker build --file 1.16/Dockerfile -t cimg/go:1.16.10  -t cimg/go:1.16 .
docker build --file 1.16/node/Dockerfile -t cimg/go:1.16.10-node  -t cimg/go:1.16-node .
docker build --file 1.16/browsers/Dockerfile -t cimg/go:1.16.10-browsers  -t cimg/go:1.16-browsers .
docker build --file 1.17/Dockerfile -t cimg/go:1.17.3  -t cimg/go:1.17 .
docker build --file 1.17/node/Dockerfile -t cimg/go:1.17.3-node  -t cimg/go:1.17-node .
docker build --file 1.17/browsers/Dockerfile -t cimg/go:1.17.3-browsers  -t cimg/go:1.17-browsers .
