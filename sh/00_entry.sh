#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -o errtrace

echo "setup $@"

python -c 'import sys; print("python encoding is "+sys.stdout.encoding)'