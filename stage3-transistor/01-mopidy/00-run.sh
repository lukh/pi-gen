#!/bin/bash -e

on_chroot << EOF
wget -P /tmp/ https://github.com/lukh/mopidy/archive/develop.zip
unzip /tmp/develop.zip -d /tmp/
pip3 install /tmp/mopidy-develop/
rm /tmp/develop.zip
rm -rf /tmp/mopidy-develop
EOF

install -m 644 files/mopidy.service "${ROOTFS_DIR}/etc/systemd/system/mopidy.service"

on_chroot << EOF
systemctl enable mopidy
EOF