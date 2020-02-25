#!/usr/bin/env bash

echo "run migrations for all sites in the bench"
bench --site all migrate
