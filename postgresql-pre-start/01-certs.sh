#!/bin/bash

cp /tmp/certs/root.crt /var/lib/pgsql/data/root.crt
sudo cp /tmp/certs/root.crt /etc/pki/ca-trust/source/anchors/
cp /tmp/certs/server-cert.pem /var/lib/pgsql/data/server.crt
sudo cp /tmp/certs/server-cert.pem /etc/pki/tls/certs/
cp /tmp/certs/server-key.pem /var/lib/pgsql/data/server.key
sudo cp /tmp/certs/server-key.pem /etc/pki/tls/private/
sudo chmod 600 /var/lib/pgsql/data/server.key /etc/pki/tls/private/server.key
update-ca-trust enable
update-ca-trust extract

echo "hostssl all         shah    0.0.0.0/0             md5 clientcert=1" >> /var/lib/pgsql/data/pg_hba.conf
