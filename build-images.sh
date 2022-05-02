#!/usr/bin/env bash

GOVERSION=1.17.9
DOCKERIMAGE=arangodboasis/cimg-go:${GOVERSION}-${CIRCLE_TAG:-$CIRCLE_BRANCH-$CIRCLE_SHA1}
echo Building ${DOCKERIMAGE}

if [ "$1" = "latest" ]; then
    ~/regctl image copy ${DOCKERIMAGE} arangodboasis/cimg-go:${GOVERSION}-latest
else
    docker buildx install
    docker run --rm --privileged multiarch/qemu-user-static --reset -p yes --credential yes
    docker build \
        --build-arg CIMGBASETAG=${CIMGBASETAG} \
        --build-arg GO_VERSION=${GOVERSION} \
        --platform linux/amd64,linux/arm64 \
        --push \
        --file 1.17/Dockerfile \
        -t ${DOCKERIMAGE} .
fi