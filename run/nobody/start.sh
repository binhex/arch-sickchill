#!/bin/bash

install_path="/opt/sickchill"

# run app in virtualenv
cd "${install_path}" && source './env/bin/activate' && python3 "${install_path}/SickChill.py" --config /config/config.ini --datadir /config