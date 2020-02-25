#!/usr/bin/env bash

if [ "$1" = '/usr/bin/supervisord' ] || [ "$1" = 'bench' ] || [ "$1" = '/home/frappe/bench-repo/env/bin/uwsgi' ] || [ "$1" = '/usr/local/bin/bench' ] || [ "$1" = '/usr/bin/node' ] || [ "$1" = '/usr/sbin/nginx' ]; then
  for file in /entrypoints/*
  do
    bash "$file"
  done
fi

exec "$@"
