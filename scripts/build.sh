#!/usr/bin/env bash

set -euo pipefail

IMAGE=$1
TAG=$2

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Build image with image name
docker build . -t ${IMAGE}:${TAG}