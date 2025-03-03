#!/bin/sh

echo "Démarrage de OpenLDAP sans scripts bloquants..."

# Désactiver le script d'arrêt automatique en renommant le fichier
if [ -f "/container/run/startup/slapd" ]; then
    mv /container/run/startup/slapd /container/run/startup/slapd.bak
fi

# Démarrer OpenLDAP directement sans dépendre du script startup
exec slapd -h "ldap://0.0.0.0:389 ldaps://0.0.0.0:636" -d 256
