#!/bin/bash -e


echo "Installing I2S Driver"

install -m 755 files/pcm5102.sh "${ROOTFS_DIR}/tmp"

on_chroot << EOF
./tmp/pcm5102.sh -y
rm /tmp/pcm5102.sh
EOF

