#!/usr/bin/env bash

mkdir -p \
sites/site1.local/locks \
sites/site1.local/task-logs \
sites/site1.local/public \
sites/site1.local/public/files \
sites/site1.local/private \
sites/site1.local/private/files \
sites/site1.local/private/backups
chown -R frappe:frappe sites logs