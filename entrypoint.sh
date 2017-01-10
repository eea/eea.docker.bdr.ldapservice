mkdir -p /var/lib/ldap/bdr
mkdir -p /var/lib/ldap/eionet

cp /var/lib/ldap/DB_CONFIG /var/lib/ldap/bdr
cp /var/lib/ldap/DB_CONFIG /var/lib/ldap/eionet
rm -f /var/lib/ldap/DB_CONFIG

chown ldap.ldap /var/lib/ldap/bdr
chown ldap.ldap /var/lib/ldap/eionet
chmod 700 /var/lib/ldap/bdr
chmod 700 /var/lib/ldap/eionet

exec /base-entrypoint.sh
