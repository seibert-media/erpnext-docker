#!/usr/bin/env bash

for file in /dir/*
do
  cmd [option] "$file"
done

exec "$@"