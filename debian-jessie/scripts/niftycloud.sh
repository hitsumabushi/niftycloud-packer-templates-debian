#!/bin/sh

# files must be uploaded at /tmp/uploads/*
UPLOAD_DIR="/tmp/uploads"

# locate init scripts
mv ${UPLOAD_DIR}/nifty /usr/local/sbin/
mv ${UPLOAD_DIR}/niftycloud_init /usr/local/sbin/
mv ${UPLOAD_DIR}/niftycloud_update /usr/local/sbin/

# locate systemd unit files
mv ${UPLOAD_DIR}/nifty.service /etc/systemd/system/
mv ${UPLOAD_DIR}/niftycloud_init.service /etc/systemd/system/
mv ${UPLOAD_DIR}/niftycloud_update.service /etc/systemd/system/

# enable units
systemctl enable nifty.service
systemctl enable niftycloud_init.service
systemctl enable niftycloud_update.service
