#!/bin/bash -e


on_chroot << EOF
pip3 install Mopidy-Transistor
EOF

install -m 750 -d "${ROOTFS_DIR}/var/lib/mopidy/transistor/noise_folder"

on_chroot << EOF
chown mopidy:audio /var/lib/mopidy/transistor
chown mopidy:audio /var/lib/mopidy/transistor/noise_folder

usermod -aG dialout mopidy
EOF

# noises
install -m 644 files/noise/* "${ROOTFS_DIR}/var/lib/mopidy/transistor/noise_folder"

on_chroot << EOF
chown mopidy:audio /var/lib/mopidy/transistor/noise_folder/*
EOF