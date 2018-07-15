#!/bin/bash

echo "Data dir should exist.  Now copy in certs."

cp /tmp/certs/root.crt /var/lib/pgsql/data/userdata/root.crt
# cp /tmp/certs/root.crt /etc/pki/ca-trust/source/anchors/
cp /tmp/certs/server.crt /var/lib/pgsql/data/userdata/server.crt
#cp /tmp/certs/server-cert.pem /var/lib/pgsql/data/server.crt
# cp /tmp/certs/server-cert.pem /etc/pki/tls/certs/
cp /tmp/certs/server.key /var/lib/pgsql/data/userdata/server.key
#cp /tmp/certs/server-key.pem /var/lib/pgsql/data/server.key
# cp /tmp/certs/server-key.pem /etc/pki/tls/private/
chmod 600 /var/lib/pgsql/data/userdata/server.key # /etc/pki/tls/private/server.key
#update-ca-trust enable
#update-ca-trust extract

echo "Show files in data dir, should be server.crt in here..."
ls -la /var/lib/pgsql/data/userdata

