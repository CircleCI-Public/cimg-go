#!/usr/bin/env bash

docker build --file 1.13/browsers/Dockerfile -t cimg/go:1.13.15-browsers  -t cimg/go:1.13-browsers .
docker build --file 1.14/browsers/Dockerfile -t cimg/go:1.14.9-browsers  -t cimg/go:1.14-browsers .
docker build --file 1.15/browsers/Dockerfile -t cimg/go:1.15.2-browsers  -t cimg/go:1.15-browsers .
