#!/bin/bash -e


echo "Setting up UART"

on_chroot << EOF
echo "enable_uart=1" >> "${ROOTFS_DIR}/boot/config.txt"
EOF

