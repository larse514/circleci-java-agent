#!/usr/bin/env bash

set -euo pipefail

IMAGE=$1
TAG=$2

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "$DOCKER_PASSWORD" | docker login --username ${DOCKER_USER} --password-stdin

docker push ${IMAGE}:${TAG}