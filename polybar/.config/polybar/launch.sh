#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar1 &
  done
else
  polybar --reload bar1 &
fi

# Launch bars legacy version - above script should launch bar on all monitors
# polybar -r bar1 &
# polybar -r bar2 &
# polybar -r bar3 &

# test
# touch /home/arik/polybar-startup-test.txt