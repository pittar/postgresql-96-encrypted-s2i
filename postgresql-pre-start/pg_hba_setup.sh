#!/bin/bash

echo "What is in the certs dir."

ls -la /var/lib/pgsql/certs

echo "hostssl all         shah    0.0.0.0/0             md5 clientcert=1" >> /var/lib/pgsql/data/pg_hba.conf
