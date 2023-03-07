#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
<<<<<<< HEAD
set -eo pipefail
=======
docker push cimg/go:1.20
docker push cimg/go:1.20.2
docker push cimg/go:1.20-node
docker push cimg/go:1.20.2-node
docker push cimg/go:1.20-browsers
docker push cimg/go:1.20.2-browsers
docker push cimg/go:1.19
docker push cimg/go:1.19.7
docker push cimg/go:1.19-node
docker push cimg/go:1.19.7-node
docker push cimg/go:1.19-browsers
<<<<<<< HEAD
docker push cimg/go:1.19.6-browsers
>>>>>>> 6a878e9 (Publish v1.20.1 and v1.19.6. [release])
=======
docker push cimg/go:1.19.7-browsers
>>>>>>> 973b590 (Publish v1.20.2 and v1.19.7. [release])
