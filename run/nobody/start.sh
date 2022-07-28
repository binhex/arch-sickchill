#!/usr/bin/dumb-init /bin/bash

# get path to site-packages
install_path=$(python3 -c "import sysconfig; print(sysconfig.get_path('purelib'))")

# run app from python system
python3 "${install_path}/SickChill.py" --config /config/config.ini --datadir /config