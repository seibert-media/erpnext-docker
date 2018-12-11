#!/usr/bin/env bash

for file in /entrypoints/*
do
  bash "$file"
done

exec "$@"
