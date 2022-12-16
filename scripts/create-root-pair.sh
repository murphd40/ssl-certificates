#!/bin/bash

set -o errexit
set -o nounset

wd=/openssl/root/ca

echo "Creating root key..."
openssl genrsa -out /out/ca.key.pem 4096
echo "done"

echo "Creating root certificate..."
echo "Required fields: Country Name, State or Province Name, Organization Name, Organizational Unit Name, Common Name"
openssl req -config $wd/openssl.cnf \
  -key /out/ca.key.pem \
  -new -x509 -days 7300 -sha256 -extensions v3_ca \
  -out /out/ca.cert.pem
echo "done"

echo "Verifying root certificate..."
openssl x509 -noout -text -in /out/ca.cert.pem
echo "done"