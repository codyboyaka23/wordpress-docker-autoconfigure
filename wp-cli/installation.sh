#!/bin/bash

cat wp-config-sample.php > wp-config.php
wp config set --allow-root DB_NAME wordpress
wp config set --allow-root DB_USER wp-user
wp config set --allow-root DB_PASSWORD password
wp config set --allow-root DB_HOST wp-dev-db-service
yes Y | wp db drop --allow-root
wp db create --allow-root
if ! wp core is-installed --allow-root > /dev/null; then
    wp core install --allow-root --locale=it_IT --url=localhost:8080 --title="official dev env, automatic installation" --admin_user=cody --admin_password=password --admin_email=me@mymail.com
fi
exit 0;