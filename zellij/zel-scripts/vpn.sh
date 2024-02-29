#!/bin/bash

if ip addr show tun0 &> /dev/null; then
    echo "#[fg=#00FF00]VPN"
else
    echo "#[fg=#FF0000]VPN"
fi

