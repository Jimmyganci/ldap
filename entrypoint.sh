#!/bin/sh

echo "Démarrage de OpenLDAP..."

# Supprimer la ligne `kill -TERM` seulement si le fichier existe
if [ -f "/container/run/startup/slapd" ]; then
    sed -i '/kill -TERM/d' /container/run/startup/slapd
fi

# Lancer le serveur LDAP
slapd -h "ldap://0.0.0.0:389 ldaps://0.0.0.0:636" -d 256
