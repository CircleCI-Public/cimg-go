#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

# docker context create cimg2
# docker buildx create --use cimg2
# docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/Dockerfile -t 483285841698.dkr.ecr.us-east-1.amazonaws.com/cimg2:1.19.11 -t 483285841698.dkr.ecr.us-east-1.amazonaws.com/cimg2:1.19 --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/Dockerfile -t ferriswh33l/node-dev:1.19.11 -t ferriswh33l/node-dev:1.19 --metadata-file ~/Desktop/metadata.json --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.19/node/Dockerfile -t 483285841698.dkr.ecr.us-east-1.amazonaws.com/cimg2:1.19.11-node -t 483285841698.dkr.ecr.us-east-1.amazonaws.com/cimg2:1.19-node --push .
docker buildx build --platform=linux/amd64 --file 1.19/browsers/Dockerfile -t 483285841698.dkr.ecr.us-east-1.amazonaws.com/cimg2:1.19.11-browsers -t 483285841698.dkr.ecr.us-east-1.amazonaws.com/cimg2:1.19-browsers --push .

# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 483285841698.dkr.ecr.us-east-1.amazonaws.com
# curl -L https://github.com/regclient/regclient/releases/latest/download/regctl-darwin-arm64 >regctl
# chmod 755 regctl

