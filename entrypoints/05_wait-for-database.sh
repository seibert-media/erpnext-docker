#!/bin/sh

echo waiting for db

while ! echo 'select 1;' | mysql -A -h "$DB_HOST" -u"$DB_NAME" -p"$DB_PASSWORD" "$DB_NAME" 2>/dev/null
do
    sleep 1
done

echo db up
