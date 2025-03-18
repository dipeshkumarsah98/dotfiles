#!/bin/bash
# Code to fetch the battery percentage of logitech mouse
# Define the deivce path
# have to change this path according to your mouse mac
DEVICE_PATH="/org/freedesktop/UPower/devices/bluetooth_generic_dev_FC_D5_E7_8E_61_48"

BATTERY_INFO=$(upower -i $DEVICE_PATH | grep percentage)

# check if the deiice is connected and has battery BATTERY_INFO
if [ -n "$BATTERY_INFO" ]; then
  BATTERY_PERCENTAGE=$(echo $BATTERY_INFO | awk '{print $2}')

  echo " $BATTERY_PERCENTAGE%"
else
  echo " Not Connected"
fi
