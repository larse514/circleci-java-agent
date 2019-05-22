#!/usr/bin/env bash

set -euo pipefail

IMAGE=$1
TAG=$2

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}
docker push ${IMAGE}:${TAG}