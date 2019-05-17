#!/usr/bin/env bash

set -euo pipefail

IMAGE=$1
TAG=$2

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

CID="$(docker run -it -d --entrypoint bash ${IMAGE}:${TAG})"
inspec exec profiles/base-agent-image/ -t docker://$CID