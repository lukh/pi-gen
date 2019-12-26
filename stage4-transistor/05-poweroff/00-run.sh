#!/bin/bash -e

on_chroot << EOF
echo "## mopidy user is allowed to execute halt and reboot" >> "/etc/sudoers.d/010_transistor_power_off"
echo "mopidy ALL=NOPASSWD: /sbin/halt, /sbin/reboot, /sbin/poweroff" >> "/etc/sudoers.d/010_transistor_power_off"

chmod 440 /etc/sudoers.d/010_transistor_power_off
EOF