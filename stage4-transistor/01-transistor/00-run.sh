#!/bin/bash -e

on_chroot << EOF
pip3 install mopidy-transistor
EOF


install -m 644 -d "${ROOTFS_DIR}/var/local/mopidy/noise_folder"

install -m 644 -d "${ROOTFS_DIR}/etc/mopidy/"
install -m 644 files/mopidy.conf "${ROOTFS_DIR}/etc/mopidy/mopidy.conf"
