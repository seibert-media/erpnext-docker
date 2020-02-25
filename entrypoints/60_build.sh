#!/usr/bin/env bash

DISABLE_BUILD=${DISABLE_BUILD:-"false"}
if [ "${DISABLE_BUILD}" = 'false' ]; then
  echo "build JS and CSS artifacts for the bench"
  bench build
fi
