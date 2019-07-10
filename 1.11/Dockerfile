# vim:set ft=dockerfile:

FROM cimg/base:2019.07

LABEL maintainer="CircleCI Community & Partner Engineering Team <community-partner@circleci.com>"

# Install packages needed for CGO
RUN apt-get update && apt-get install -y --no-install-recommends \
		g++ \
		libc6-dev \
	&& rm -rf /var/lib/apt/lists/*

ENV GO_VERSION=1.11.10
ENV GO_SHA=fake-sha

RUN curl -sSL "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" | tar -xz -C /usr/local/

# We need to check the SHA here. This isn't done yet.

ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

WORKDIR /root/project
