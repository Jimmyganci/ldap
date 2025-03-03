FROM osixia/openldap:latest

ENV LDAP_ORGANISATION="My Organization"
ENV LDAP_DOMAIN="example.com"
ENV LDAP_ADMIN_PASSWORD="adminpassword"

EXPOSE 389 636

CMD ["/container/tool/run"]
