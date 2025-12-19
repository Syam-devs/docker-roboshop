#!/bin/bash

if [ -f /tmp/MYSQL_ROOT_PASSWORD.txt ]; then
    PASSWORD=$(cat /tmp/MYSQL_ROOT_PASSWORD.txt)
    echo "Accessed Root Password"
else
    echo "Password file not found"
    exit 1
fi
export MYSQL_ROOT_PASSWORD=$PASSWORD

exec /entrypoint.sh mysqld
