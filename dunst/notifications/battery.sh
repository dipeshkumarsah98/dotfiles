#!/bin/sh

CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)

STATUS=$(cat /sys/class/power_supply/BAT1/status)

#
[ "$STATUS" = "Full" ] && [ "$CAPACITY" -gt 97 ] && dunstify -u normal -a power_supply_full "Battery Full" "Charge full ($CAPACITY%).\nPlease unplug from charger." && echo "Full Battery notification sent" &&
	(mplayer ~/.config/dunst/emergence-ringtone.ogg) || echo "Full Battery notification not sent"

[ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -lt 21 ] &&
	dunstify -u critical -a power_supply_low "Low Battery" "You are running low on battery ($CAPACITY%).\nPlease plug in the charger." && echo "Low Battery notification sent" &&
	(mplayer ~/.config/dunst/emergence-ringtone.ogg) || echo "low Battery notification not sent"

[ "$STATUS" = "Charging" ] && [ "$CAPACITY" -gt 97 ] &&
	dunstify -u normal -a power_supply_full "Battery Full" "Charge full ($CAPACITY%).\nPlease unplug from charger." && echo "Full Battery notification sent" &&
	(mplayer ~/.config/dunst/smile-ringtone.ogg) || echo "Full Battery notification not sent"
