#!/usr/bin/env bash

# Set the wildcarded domain
# we want to use
DOMAIN="*.ocp.example.com"

# A blank passphrase
PASSPHRASE=""

# Set our CSR variables
SUBJ="
C=XX
ST=Cyber Space
O=ACME
OU=HQ
localityName=Internet
commonName=$DOMAIN
organizationalUnitName=ACME
emailAddress=xxx@xxx.com
"

openssl genrsa -out 'ocp.example.com.key' 2048
openssl req -new -subj "$(echo -n "$SUBJ" | tr "\n" "/")" -key "ocp.example.com.key" -out "ocp.example.com.csr" -passin pass:$PASSPHRASE
openssl x509 -req -days 365 -in 'ocp.example.com.csr' -signkey 'ocp.example.com.key' -out 'ocp.example.com.crt'

# Set the wildcarded domain
# we want to use
DOMAIN="*.example.com"

# A blank passphrase
PASSPHRASE=""

# Set our CSR variables
SUBJ="
C=XX
ST=Cyber Space
O=ACME
OU=HQ
localityName=Internet
commonName=$DOMAIN
organizationalUnitName=ACME
emailAddress=xxx@xxx.com
"

openssl genrsa -out "example.com.key" 2048
openssl req -new -subj "$(echo -n "$SUBJ" | tr "\n" "/")" -key "example.com.key" -out "example.com.csr" -passin pass:$PASSPHRASE
openssl x509 -req -days 365 -in "example.com.csr" -signkey "example.com.key" -out "example.com.crt"
