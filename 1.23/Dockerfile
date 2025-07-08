# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.
FROM cimg/base:2025.02

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

ENV GO_VER="1.23.11"

# Install packages needed for CGO
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		g++ \
		libc6-dev && \
	sudo rm -rf /var/lib/apt/lists/* && \
	[[ $(uname -m) == "x86_64" ]] && ARCH="amd64" || ARCH="arm64" && \
	curl -sSL "https://go.dev/dl/go${GO_VER}.linux-${ARCH}.tar.gz" | sudo tar -xz -C /usr/local/ && \
	mkdir -p /home/circleci/go/bin

ENV GOPATH="/home/circleci/go"
ENV PATH="$GOPATH/bin:/usr/local/go/bin:$PATH"

# Install related tools
# renovate: datasource=github-releases depName=gotestyourself/gotestsum
ENV GOTESTSUM_VERSION=1.12.0
# renovate: datasource=github-releases depName=golangci/golangci-lint
ENV GOCI_LINT_VERSION=1.64.5
# renovate: datasource=github-releases depName=golang/vuln
ENV GOVULNCHECK_VERSION=1.1.4
# renovate: datasource=github-releases depName=go-task/task
ENV TASK_VERSION=3.40.1

RUN [[ $(uname -m) == "x86_64" ]] && ARCH="amd64" || ARCH="arm64" && \
	curl -sSL "https://github.com/gotestyourself/gotestsum/releases/download/v${GOTESTSUM_VERSION}/gotestsum_${GOTESTSUM_VERSION}_linux_${ARCH}.tar.gz" | \
	sudo tar -xz -C /usr/local/bin gotestsum && \
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sudo sh -s -- -b /usr/local/bin v${GOCI_LINT_VERSION} && \
	go install "golang.org/x/vuln/cmd/govulncheck@v${GOVULNCHECK_VERSION}" && go clean -cache -modcache && rm -rf "${GOPATH}/pkg" && \
	curl -sSfL "https://github.com/go-task/task/releases/download/v${TASK_VERSION}/task_linux_${ARCH}.tar.gz" | \
	sudo tar -xz -C /usr/local/bin task
