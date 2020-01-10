# vim:set ft=dockerfile:

FROM cimg/base:2020.01

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

# Install packages needed for CGO
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		g++ \
		libc6-dev && \
	sudo rm -rf /var/lib/apt/lists/*

ENV GO_VERSION=1.12.15
ENV GO_SHA=fake-sha

RUN curl -sSL "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" | sudo tar -xz -C /usr/local/ && \
	mkdir -p /home/circleci/go/bin

ENV GOPATH /home/circleci/go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
