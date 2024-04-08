#!/bin/bash

# Get the maximum brightness value
max_brightness=$(brightnessctl m)

# Get the current brightness value
current_brightness=$(brightnessctl g)

# Calculate brightness percentage
brightness_percentage=$(((current_brightness * 100) / max_brightness))

# Print the brightness percentage
echo "${brightness_percentage}%"
