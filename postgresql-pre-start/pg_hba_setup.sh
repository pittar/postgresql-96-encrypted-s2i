#!/bin/bash

echo "Change rights on key file."

chmod 600 /var/lib/pgsql/certs/server.key

echo "What is in the certs dir."

ls -la /var/lib/pgsql/certs

echo "hostssl all         shah    0.0.0.0/0             md5 clientcert=1" >> /var/lib/pgsql/data/pg_hba.conf
