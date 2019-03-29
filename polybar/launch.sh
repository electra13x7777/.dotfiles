#!/usr/bin/env bash
LC_ALL=en_US.UTF-8
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#unset MONITOR
# Launch bar1 and bar2
polybar example -r &
#DISPLAY2="$(xrandr -q | grep 'HDMI1\|DP-2-2' | cut -d ' ' -f1)"
#[[ ! -z $DISPLAY2 ]] && MONITOR=$DISPLAY2 polybar top2 &
#laptop_external_monitor=$(xrandr --query | grep 'DP-2-2')
#if [[ $my_laptop_external_monitor = *connected* ]]; then
#		    polybar top_external &
#fi

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload example &
	done
else
	polybar --reload example &
fi

echo "Bars launched..."
