# Utilisation de l'image OpenLDAP officielle
FROM osixia/openldap:latest

# Définition des variables d'environnement
ENV LDAP_ORGANISATION="My Organization"
ENV LDAP_DOMAIN="example.com"
ENV LDAP_ADMIN_PASSWORD="adminpassword"

# Exposition des ports LDAP
EXPOSE 389 636

# Commande pour démarrer le serveur OpenLDAP
CMD ["/container/tool/run"]
