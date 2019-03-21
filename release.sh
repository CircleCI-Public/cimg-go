#!/usr/bin/env bash

versions=( "$@" )

sortedVersions=( $(
	for version in "${versions[@]}"; do
		echo "$version"
	done | sort --reverse) )


for i in "${!sortedVersions[@]}"; do

	version=${sortedVersions[$i]}

	git checkout -b go-v${version}
	./gen-dockerfiles.sh ${version} fake-sha
	git add .
	git commit -m "Add Go v${version}."
	git push -u origin go-v${version}
done
