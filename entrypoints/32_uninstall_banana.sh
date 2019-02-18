#!/usr/bin/env bash

echo "uninstall banana app"
bench --site site1.local uninstall-app banana -y || true
