#!/usr/bin/env bash

vers=()

if [ -f shared/automated-updates.sh ]; then
  source shared/automated-updates.sh
else
  echo "Check if submodule was loaded; automated-updates.sh is missing"
  exit 1
fi

getGoVulnCheck() {
  local templateFile=$1

  RSS_URL="https://github.com/golang/vuln/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//' | tr -d ':')

  for version in $VERSIONS; do
    if [[ $version =~ ^v[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$(cut -d "v" -f2 <<< "${version}")"
      generateSearchTerms "GOVULNCHECK_V=" "$templateFile"
      replaceVersions "GOVULNCHECK_V=" "$SEARCH_TERM" "true"
    fi
  done
}

getGoTestSum() {
  local templateFile=$1

  RSS_URL="https://github.com/gotestyourself/gotestsum/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^v[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$(cut -d "v" -f2 <<< "${version}")"
      generateSearchTerms "GOTESTSUM_V=" "$templateFile"
      replaceVersions "GOTESTSUM_V=" "$SEARCH_TERM" "true"
    fi
  done
}

getGoCILint () {
  local templateFile=$1

  RSS_URL="https://github.com/golangci/golangci-lint/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^v[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$(cut -d "v" -f2 <<< "${version}")"
      generateSearchTerms "GOCI_LINT_V=" "$templateFile"
      replaceVersions "GOCI_LINT_V=" "$SEARCH_TERM" "true"
    fi
  done
}

getGoVersion() {
  echo "Getting Go Test Sum Versions..."
  getGoTestSum "Dockerfile.template"

  echo "Getting Go Lint Versions..."
  getGoCILint "Dockerfile.template"

  echo "Getting Go Vuln Check Versions..."
  getGoVulnCheck "Dockerfile.template"

  RSS_URL="https://github.com/golang/go/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^go[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$(trimmer "go" <<< "$version")"
      generateSearchTerms "GO_VER=" "$majorMinor/Dockerfile" '"'
      directoryCheck "$majorMinor" "$SEARCH_TERM"
      if [[ $(eval echo $?) == 0 ]]; then
        generateVersionString "$newVersion"
      fi
    fi
  done
}

getGoVersion

if [ -n "${vers[*]}" ]; then
  echo "Included version updates: ${vers[*]}"
  echo "Running release script"
  ./shared/release.sh "${vers[@]}"
else
  echo "No new version updates"
  exit 0
fi
