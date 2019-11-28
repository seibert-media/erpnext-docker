#!/usr/bin/env bash

if [ "$1" = '/usr/bin/supervisord' ]; then
  for file in /entrypoints/*
  do
    bash "$file"
  done
fi

exec "$@"
