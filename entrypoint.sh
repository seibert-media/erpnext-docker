#!/usr/bin/env bash

for file in /sh/*
do
  bash "$file"
done

exec "$@"