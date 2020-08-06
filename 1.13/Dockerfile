# vim:set ft=dockerfile:

FROM cimg/base:2020.06

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV GO_VERSION=1.13.15

# Install packages needed for CGO
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		g++ \
		libc6-dev && \
	sudo rm -rf /var/lib/apt/lists/* && \
	curl -sSL "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" | sudo tar -xz -C /usr/local/ && \
	mkdir -p /home/circleci/go/bin

RUN curl -sSL "https://github.com/gotestyourself/gotestsum/releases/download/v0.5.2/gotestsum_0.5.2_linux_amd64.tar.gz" | \
	sudo tar -xz -C /usr/local/bin gotestsum

ENV GOPATH /home/circleci/go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
