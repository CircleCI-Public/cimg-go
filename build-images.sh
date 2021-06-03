#!/usr/bin/env bash

docker build --file 1.15/Dockerfile -t cimg/go:1.15.13  -t cimg/go:1.15 .
docker build --file 1.15/node/Dockerfile -t cimg/go:1.15.13-node  -t cimg/go:1.15-node .
docker build --file 1.15/browsers/Dockerfile -t cimg/go:1.15.13-browsers  -t cimg/go:1.15-browsers .
docker build --file 1.16/Dockerfile -t cimg/go:1.16.5  -t cimg/go:1.16 .
docker build --file 1.16/node/Dockerfile -t cimg/go:1.16.5-node  -t cimg/go:1.16-node .
docker build --file 1.16/browsers/Dockerfile -t cimg/go:1.16.5-browsers  -t cimg/go:1.16-browsers .
