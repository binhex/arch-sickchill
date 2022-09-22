#!/usr/bin/dumb-init /bin/bash

# path to downloaded source
install_path="/opt/sickchill"

# run app from python system
python3 "${install_path}/lib/python3.10/site-packages/SickChill.py" --config /config/config.ini --datadir /config