#!/usr/bin/env bash

docker build --file 1.14/browsers/Dockerfile -t cimg/go:1.14.11-browsers  -t cimg/go:1.14-browsers .
docker build --file 1.15/browsers/Dockerfile -t cimg/go:1.15.4-browsers  -t cimg/go:1.15-browsers .
