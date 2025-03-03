FROM osixia/openldap:latest

ENV LDAP_ORGANISATION="My Organization"
ENV LDAP_DOMAIN="example.com"
ENV LDAP_ADMIN_PASSWORD="adminpassword"

# Créer un script d’entrée pour supprimer `kill -TERM` et démarrer LDAP proprement
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Exposer les ports LDAP
EXPOSE 389 636

CMD ["/entrypoint.sh"]
