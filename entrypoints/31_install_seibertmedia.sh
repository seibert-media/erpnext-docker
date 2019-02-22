#!/usr/bin/env bash

echo "install seibertmedia app ..."
/home/frappe/bench-repo/env/bin/pip install -q  -e /home/frappe/bench-repo/apps/seibertmedia --no-cache-dir
echo "" >> /home/frappe/bench-repo/sites/apps.txt
echo "seibertmedia" >> /home/frappe/bench-repo/sites/apps.txt
bench --site site1.local install-app seibertmedia  || true
