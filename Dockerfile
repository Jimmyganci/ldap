FROM osixia/openldap:latest

ENV LDAP_ORGANISATION="My Organization"
ENV LDAP_DOMAIN="example.com"
ENV LDAP_ADMIN_PASSWORD="adminpassword"

# Désactiver le comportement problématique qui force l'arrêt d'OpenLDAP
RUN sed -i '/kill -TERM/d' /container/run/startup/slapd

# Exposition des ports LDAP
EXPOSE 389 636

CMD ["/container/tool/run"]
