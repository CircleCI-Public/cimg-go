#!/usr/bin/env bash

DOCKERIMAGE=arangodboasis/cimg-go:1.17.5-${CIRCLE_TAG:-$CIRCLE_BRANCH-$CIRCLE_SHA1}
echo Building ${DOCKERIMAGE}

docker buildx install
docker build \
    --build-arg CIMGBASETAG=${CIMGBASETAG} \
    --platform linux/amd64,linux/arm64 \
    --push \
    --file 1.17/Dockerfile \
    -t ${DOCKERIMAGE} .
