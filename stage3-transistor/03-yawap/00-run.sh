#!/bin/bash -e

on_chroot << EOF
pip3 install yawap
yawap --install wlan0 TransistorWifi Transistor123456
EOF

