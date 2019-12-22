#!/bin/bash -e

# on_chroot << EOF
# pip3 install yawap
# yawap --install wlan0 TransistorWifi Transistor123456
# EOF

on_chroot << EOF
wget -P /tmp/ https://github.com/lukh/yawap/archive/master.zip
pip3 install /tmp/master.zip
rm /tmp/master.zip
yawap --install wlan0 TransistorWifi Transistor123456
EOF
