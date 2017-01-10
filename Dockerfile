FROM eeacms/ldapservice:latest
MAINTAINER "EEA: IDM2 C-TEAM" <eea-edw-c-team-alerts@googlegroups.com>

RUN mv /entrypoint.sh /base-entrypoint.sh
COPY entrypoint.sh /

CMD /entrypoint.sh
