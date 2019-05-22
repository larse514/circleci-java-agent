#!/usr/bin/env bash

set -euo pipefail

IMAGE=$1

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker rm $IMAGE
