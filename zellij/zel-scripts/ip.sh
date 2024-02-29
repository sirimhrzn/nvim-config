#!/usr/bin/bash
ip=($(ip addr show | grep -oP '(?<=inet\s)\d+\.\d+\.\d+\.\d+' | awk 'NR==2'))
echo "#[fg=#FF0000]$ip"
