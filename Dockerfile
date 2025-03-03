FROM osixia/openldap:latest

ENV LDAP_ORGANISATION="My Organization"
ENV LDAP_DOMAIN="example.com"
ENV LDAP_ADMIN_PASSWORD="adminpassword"

# Copie du script de démarrage
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 389 636

CMD ["/entrypoint.sh"]
