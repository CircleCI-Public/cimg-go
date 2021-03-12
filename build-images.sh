#!/usr/bin/env bash

docker build --file 1.15/Dockerfile -t cimg/go:1.15.9  -t cimg/go:1.15 .
docker build --file 1.15/node/Dockerfile -t cimg/go:1.15.9-node  -t cimg/go:1.15-node .
docker build --file 1.15/browsers/Dockerfile -t cimg/go:1.15.9-browsers  -t cimg/go:1.15-browsers .
docker build --file 1.16/Dockerfile -t cimg/go:1.16.1  -t cimg/go:1.16 .
docker build --file 1.16/node/Dockerfile -t cimg/go:1.16.1-node  -t cimg/go:1.16-node .
docker build --file 1.16/browsers/Dockerfile -t cimg/go:1.16.1-browsers  -t cimg/go:1.16-browsers .
