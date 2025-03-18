#!/bin/bash

# Define the deivce path
DEVICE_PATH="/org/freedesktop/UPower/devices/headset_dev_00_A4_1C_17_27_95"

BATTERY_INFO=$(upower -i $DEVICE_PATH | grep percentage)

# check if the deiice is connected and has battery BATTERY_INFO
if [ -n "$BATTERY_INFO" ]; then
  BATTERY_PERCENTAGE=$(echo $BATTERY_INFO | awk '{print $2}')
  echo "  $BATTERY_PERCENTAGE"
else
  echo " Not Connected"
fi
