#!/usr/bin/env bash

if [ "$1" = '/usr/bin/supervisord' ] || [ "$1" = 'bench' ]; then
  for file in /entrypoints/*
  do
    bash "$file"
  done
fi

exec "$@"
