#!/usr/bin/env bash

docker build --file 1.15/Dockerfile -t cimg/go:1.15.11  -t cimg/go:1.15 .
docker build --file 1.15/node/Dockerfile -t cimg/go:1.15.11-node  -t cimg/go:1.15-node .
docker build --file 1.15/browsers/Dockerfile -t cimg/go:1.15.11-browsers  -t cimg/go:1.15-browsers .
docker build --file 1.16/Dockerfile -t cimg/go:1.16.3  -t cimg/go:1.16 .
docker build --file 1.16/node/Dockerfile -t cimg/go:1.16.3-node  -t cimg/go:1.16-node .
docker build --file 1.16/browsers/Dockerfile -t cimg/go:1.16.3-browsers  -t cimg/go:1.16-browsers .
