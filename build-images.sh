#!/usr/bin/env bash

docker build --file 1.14/Dockerfile -t cimg/go:1.14.12  -t cimg/go:1.14 .
docker build --file 1.14/node/Dockerfile -t cimg/go:1.14.12-node  -t cimg/go:1.14-node .
docker build --file 1.14/browsers/Dockerfile -t cimg/go:1.14.12-browsers  -t cimg/go:1.14-browsers .
docker build --file 1.15/Dockerfile -t cimg/go:1.15.5  -t cimg/go:1.15 .
docker build --file 1.15/node/Dockerfile -t cimg/go:1.15.5-node  -t cimg/go:1.15-node .
docker build --file 1.15/browsers/Dockerfile -t cimg/go:1.15.5-browsers  -t cimg/go:1.15-browsers .
