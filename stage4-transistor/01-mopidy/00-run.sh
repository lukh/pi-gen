#!/bin/bash -e

on_chroot << EOF
pip3 install mopidy
EOF

on_chroot << EOF
pip3 install Mopidy-ALSAMixer
EOF


install -m 644 files/mopidy.service "${ROOTFS_DIR}/etc/systemd/system/mopidy.service"

install -m 750 -d "${ROOTFS_DIR}/etc/mopidy/"
install -m 640 files/mopidy.conf "${ROOTFS_DIR}/etc/mopidy/mopidy.conf"

on_chroot << EOF
adduser --quiet --system --no-create-home --home /var/lib/mopidy --ingroup audio mopidy


mkdir -p /var/lib/mopidy
mkdir -p /var/lib/mopidy/local
mkdir -p /var/lib/mopidy/media
mkdir -p /var/lib/mopidy/playlists
mkdir -p /var/cache/mopidy
mkdir -p /var/log/mopidy

chown mopidy:audio /var/lib/mopidy
chown mopidy:audio /var/lib/mopidy/local
chown mopidy:audio /var/lib/mopidy/media
chown mopidy:audio /var/lib/mopidy/playlists
chown mopidy:audio /var/cache/mopidy
chown mopidy:audio /var/log/mopidy


chown mopidy:root /etc/mopidy/
chown mopidy:root /etc/mopidy/mopidy.conf

systemctl enable mopidy
EOF