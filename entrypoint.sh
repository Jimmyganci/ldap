#!/bin/sh

echo "Démarrage de OpenLDAP..."

# Vérifie si slapd tourne déjà, sinon démarre-le
if pgrep slapd > /dev/null; then
    echo "slapd est déjà en cours d'exécution."
else
    slapd -h "ldap://0.0.0.0:389 ldaps://0.0.0.0:636" -d 256
fi
