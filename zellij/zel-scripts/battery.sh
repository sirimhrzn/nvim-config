#!/bin/bash
battery_status=$(acpi | awk '{print $3}')
battery_percentage=$(acpi | grep -oP '\d+%' | awk '{print $1}')

if [[ $battery_status == "Charging," ]]; then
    echo "#[fg=#00FF00]$battery_percentage"
else
    echo "#[fg=#FF0000]$battery_percentage"
fi
