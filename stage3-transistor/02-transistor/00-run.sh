#!/bin/bash -e

on_chroot << EOF
pip3 install mopidy-transistor
EOF


install -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/noise_folder"
install -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/mopidy/"

install -m 640 files/mopidy.conf "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/mopidy/mopidy.conf"
