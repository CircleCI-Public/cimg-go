#!/usr/bin/env bash

# A Docker image is a combination of REGISTRY/NAMESPACE/REPOSITORY[:TAG].
# Registry will be ignored for now unless we move off Docker Hub.

# Import repo specific image information
source ./manifest

version=( "$1" )  # SemVer version number passed in via command-line
sha=( "$2" )  # SHA hash for the main binary of the image, passed in via command-line
tagless_image=circleciimages/${repository}

# prepare file
echo "#!/usr/bin/env bash" > build-images.sh
echo "" >> build-images.sh

string="docker build"

if [[ $version =~ ^[0-9]+\.[0-9]+ ]]; then
	versionShort=${BASH_REMATCH[0]}
else
	echo "Version matching failed." >&2
	continue
fi

[[ -d "$versionShort" ]] || mkdir "$versionShort"

sed -r -e 's!%%PARENT%%!'"$parent"'!g' "./Dockerfile.template" > "$versionShort/Dockerfile"
sed -i 's!%%GO_VERSION%%!'"$version"'!g' "$versionShort/Dockerfile"
sed -i 's!%%GO_SHA%%!'"$sha"'!g' "$versionShort/Dockerfile"

string="$string --file $versionShort/Dockerfile"
if [[ $i == 0 ]]; then
	string="${string} -t ${tagless_image}:latest"
fi

string="${string} -t ${tagless_image}:${version}"

if [[ $versionShort != $version ]]; then
	string="${string}  -t ${tagless_image}:${versionShort}"
fi

string="$string ."

echo "$string" >> build-images.sh
