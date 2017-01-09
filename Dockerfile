FROM eeacms/ldapservice:latest
MAINTAINER "EEA: IDM2 C-TEAM" <eea-edw-c-team-alerts@googlegroups.com>

RUN mkdir -p /var/lib/ldap/bdr \
    && mkdir -p /var/lib/ldap/eionet \
    && rm -f /var/lib/ldap/DB_CONFIG

COPY DB_CONFIG /var/lib/ldap/bdr
COPY DB_CONFIG /var/lib/ldap/eionet

RUN chown ldap.ldap -R /var/lib/ldap \
    && chmod 700 /var/lib/ldap/bdr \
    && chmod 700 /var/lib/ldap/eionet
