#!/bin/sh

echo "Démarrage de OpenLDAP..."
slapd -d 256 -h "ldap://0.0.0.0:389"
