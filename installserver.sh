#!/bin/bash

OPTS=""

if [ $VALIDATE == 1 ]; then
	OPTS="validate"
fi


/root/steamcmd.sh +login $STEAM_USERNAME $STEAM_PASSWORD +force_install_dir /arma3 +app_update 233780 -beta legacyports $OPTS +quit

#workaround for server bug
rm /arma3/steamclient.so
ln -s /root/linux32/steamclient.so /arma3/steamclient.so

unset OPTS
unset STEAM_USERNAME
unset STEAM_PASSWORD
