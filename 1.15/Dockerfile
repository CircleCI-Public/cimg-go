# vim:set ft=dockerfile:

FROM cimg/base:2021.04

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV GO_VERSION=1.15.13

# Install packages needed for CGO
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		g++ \
		libc6-dev && \
	sudo rm -rf /var/lib/apt/lists/* && \
	curl -sSL "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" | sudo tar -xz -C /usr/local/ && \
	mkdir -p /home/circleci/go/bin

RUN curl -sSL "https://github.com/gotestyourself/gotestsum/releases/download/v1.6.4/gotestsum_1.6.4_linux_amd64.tar.gz" | \
	sudo tar -xz -C /usr/local/bin gotestsum

ENV GOPATH /home/circleci/go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
