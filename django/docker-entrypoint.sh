#!/bin/sh

cd /code
git clone https://github.com/nabad600/django.git .
chown -R www-data:www-data /code 2> /dev/null
exec "$@"