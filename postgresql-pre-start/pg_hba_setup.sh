#!/bin/bash

echo "Change rights on key file."

mkdir -p /var/lib/pgsql/certs

cp /tmp/certs/root.crt /var/lib/pgsql/certs/root.crt
cp /tmp/certs/server.crt /var/lib/pgsql/certs/server.crt
cp /tmp/certs/server.key /var/lib/pgsql/certs/server.key
chmod 600 /var/lib/pgsql/certs/server.key

echo "What is in the certs dir."

ls -la /var/lib/pgsql/certs

echo "hostssl all         shah    0.0.0.0/0             md5 clientcert=1" >> /var/lib/pgsql/data/pg_hba.conf
