#!/usr/bin/env bash

echo "uninstall apps ..."
bench --site site1.local uninstall-app banana -y || true
