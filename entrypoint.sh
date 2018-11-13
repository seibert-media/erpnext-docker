#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -o errtrace

echo "setup $@"

python -c 'import sys; print("python encoding is "+sys.stdout.encoding)'

mkdir -p \
sites/site1.local/locks \
sites/site1.local/task-logs \
sites/site1.local/public \
sites/site1.local/public/files \
sites/site1.local/private \
sites/site1.local/private/files \
sites/site1.local/private/backups
chown -R frappe:frappe sites

echo "set ROOT_PASSWORD to ***"
sed -i "s/{{ROOT_PASSWORD}}/${ROOT_PASSWORD}/" sites/common_site_config.json

echo "set ADMIN_PASSWORD to ***"
sed -i "s/{{ADMIN_PASSWORD}}/${ADMIN_PASSWORD}/" sites/common_site_config.json

echo "set DB_HOST to ${DB_HOST}"
sed -i "s/{{DB_HOST}}/${DB_HOST}/" sites/common_site_config.json

echo "set DB_NAME to ${DB_NAME}"
sed -i "s/{{DB_NAME}}/${DB_NAME}/" sites/site1.local/site_config.json

echo "set DB_PASSWORD to ***"
sed -i "s/{{DB_PASSWORD}}/${DB_PASSWORD}/" sites/site1.local/site_config.json

echo "set ENCRYPTION_KEY to ***"
sed -i "s/{{ENCRYPTION_KEY}}/${ENCRYPTION_KEY}/" sites/site1.local/site_config.json

DEVELOPER_MODE=${DEVELOPER_MODE:-"0"}
echo "set DEVELOPER_MODE to ${DEVELOPER_MODE}"
sed -i "s/{{DEVELOPER_MODE}}/${DEVELOPER_MODE}/" sites/common_site_config.json

echo "set bench values"
bench set-mariadb-host "${DB_HOST}"
bench set-admin-password "${ADMIN_PASSWORD}"

echo "install apps ..."
bench --site site1.local install-app erpnext || true
bench --site site1.local install-app seibertmedia  || true

echo "uninstall apps ..."
bench --site site1.local uninstall-app banana -y || true

echo "run migrations for all sites in the bench"
bench --site all migrate

echo "build JS and CSS artifacts for the bench"
bench build

echo "run $@"

exec "$@"
