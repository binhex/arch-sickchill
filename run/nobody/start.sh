#!/usr/bin/dumb-init /bin/bash

# path to downloaded source
install_path="/opt/sickchill"

# run app from python system
"${install_path}/bin/sickchill" --config /config/config.ini --datadir /config