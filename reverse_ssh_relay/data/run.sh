#!/usr/bin/with-contenv bashio
set -e

HA_PORT=$(bashio::core.port)

REMOTEPORT=$(bashio::config 'remote_port')
REMOTEGATEWAYPORT=$(bashio::config 'remote_gateway_port')
REMOTEUSER=$(bashio::config 'remote_user')
REMOTEADDRESS=$(bashio::config 'remote_address')
REMOTEPASSWORD=$(bashio::config 'remote_password')

sed -i "s/%%HA_PORT%%/$HA_PORT/g" sshtunnel.sh

sed -i "s/%%REMOTEPORT%%/$REMOTEPORT/g" sshtunnel.sh
sed -i "s/%%REMOTEGATEWAYPORT%%/$REMOTEGATEWAYPORT/g" sshtunnel.sh
sed -i "s/%%REMOTEUSER%%/$REMOTEUSER/g" sshtunnel.sh
sed -i "s/%%REMOTEADDRESS%%/$REMOTEADDRESS/g" sshtunnel.sh
sed -i "s/%%REMOTEPASSWORD%%/$REMOTEPASSWORD/g" sshtunnel.sh

./sshtunnel.sh

#rc-update add sshtunnel.service default
#rc-service sshtunnel.service start