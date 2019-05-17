#!/usr/bin/env bash

IMAGE="IMAGE"

docker build . -t "${IMAGE}:local"

set -euo pipefail
CID="$(docker run -it -d --entrypoint ash ${IMAGE}:local)"
inspec exec profiles/base-agent-image/ -t docker://$CID
docker rm -f $CID