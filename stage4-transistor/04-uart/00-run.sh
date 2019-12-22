#!/bin/bash -e


on_chroot << EOF
systemctl disable hciuart
EOF