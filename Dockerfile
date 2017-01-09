FROM eeacms/ldapservice:latest
MAINTAINER "EEA: IDM2 C-TEAM" <eea-edw-c-team-alerts@googlegroups.com>

RUN mkdir -p /var/lib/ldap/bdr \
    && mkdir -p /var/lib/ldap/eionet \
    && chown ldap.ldap /var/lib/ldap \
    && chmod 700 /var/lib/ldap
