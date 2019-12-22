#!/bin/bash -e

echo "## Admin user group is allowed to execute halt and reboot" >> "${ROOTFS_DIR}/etc/sudoers"
echo "mopidy ALL=NOPASSWD: /sbin/halt, /sbin/reboot, /sbin/poweroff" >> "${ROOTFS_DIR}/etc/sudoers"
