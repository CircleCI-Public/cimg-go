#!/usr/bin/env bash

docker build --file 1.12/Dockerfile -t circleciimages/golang:1.12.5  -t circleciimages/golang:1.12 .
