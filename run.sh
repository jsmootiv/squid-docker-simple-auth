#!/bin/sh
htpasswd -bc /etc/squid/squid_passwd "${SQUID_USERNAME}" "${SQUID_PASSWORD}"
echo "Launching squid..."
squid3 -Nd2
