#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d ":" -f 1); do
	log_path=/tmp/polybar_$m.log
	echo "---" | tee -a $log_path
	MONITOR=$m polybar --reload my_bar >> $log_path 2>&1 &
	echo "Bars launched..." | tee -a $log_path
done
