# vim:set ft=dockerfile:

# FROM cimg/base:2021.10

# Oasis added begin
ARG CIMGBASETAG
FROM arangodboasis/cimg-base:${CIMGBASETAG}

ARG TARGETPLATFORM
ARG TARGETARCH
# Oasis added end

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV GO_VERSION=1.17.5

# Install packages needed for CGO
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		g++ \
		libc6-dev && \
	sudo rm -rf /var/lib/apt/lists/* && \
	curl -sSL "https://golang.org/dl/go${GO_VERSION}.linux-${TARGETARCH/aarch64/arm64}.tar.gz" | sudo tar -xz -C /usr/local/ && \
	mkdir -p /home/circleci/go/bin

RUN curl -sSL "https://github.com/gotestyourself/gotestsum/releases/download/v1.7.0/gotestsum_1.7.0_linux_${TARGETARCH/aarch64/arm64}.tar.gz" | \
	sudo tar -xz -C /usr/local/bin gotestsum

ENV GOPATH /home/circleci/go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
