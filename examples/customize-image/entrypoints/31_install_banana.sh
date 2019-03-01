#!/usr/bin/env bash

echo "install banana app ..."
/home/frappe/bench-repo/env/bin/pip install -q  -e /home/frappe/bench-repo/apps/banana --no-cache-dir
echo "" >> /home/frappe/bench-repo/sites/apps.txt
echo "banana" >> /home/frappe/bench-repo/sites/apps.txt
bench --site site1.local install-app banana  || true
