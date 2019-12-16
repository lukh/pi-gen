#!/bin/bash -e

on_chroot << EOF
wget https://github.com/lukh/mopidy/archive/develop.zip
unzip develop.zip
pip3 install mopidy-develop/
EOF

install -m 644 files/mopidy.service "${ROOTFS_DIR}/etc/systemd/system/mopidy.service"

on_chroot << EOF
systemctl enable mopidy
EOF