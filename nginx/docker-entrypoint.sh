#!/bin/sh

set -e

rm -f /var/log/nginx/access.log
rm -f /var/log/nginx/error.log

touch /var/log/nginx/access.log
touch /var/log/nginx/error.log


chown -R nginx:nginx /var/log/nginx
chmod 644 /var/log/nginx/*.log

exec nginx -g "daemon off;"
