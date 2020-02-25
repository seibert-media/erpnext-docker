#!/usr/bin/env bash

echo "build JS and CSS artifacts for the bench"

DISABLE_BUILD=${DISABLE_BUILD:-"false"}
if [ "${DISABLE_BUILD}" = 'false' ]; then
  bench build
fi
