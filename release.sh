#!/usr/bin/env bash

versions=( "$@" )

sortedVersions=( $(
	for version in "${versions[@]}"; do
		echo "$version"
	done | sort --reverse) )


for i in "${!sortedVersions[@]}"; do

	version=${sortedVersions[$i]}

	git checkout -b awscli-v${version}
	./gen-dockerfiles.sh ${version}
	git add .
	git commit -m "Add AWS CLI v${version}."
	git push -u origin awscli-v${version}
done
