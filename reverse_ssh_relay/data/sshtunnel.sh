#!/usr/bin/with-contenv bashio

while true
do
  sshpass -p '%%REMOTEPASSWORD%%' \
    ssh %%REMOTEUSER%%@%%REMOTEADDRESS%% -p %%REMOTEPORT%%\
      -R %%REMOTEGATEWAYPORT%%:homeassistant.local.hass.io:%%HA_PORT%% \
	-o "ServerAliveInterval 60" \
      -o "ServerAliveCountMax 2" \
      -o "ConnectTimeout 15" \
      -o "ExitOnForwardFailure yes" \
      -o "StrictHostKeyChecking no" \
      -C -N;

    echo "SSH connection exited"
    sleep 30
done
