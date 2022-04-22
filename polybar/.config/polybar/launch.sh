#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar -r bar1 &
polybar -r bar2 &
polybar -r bar3 &

# test
# touch /home/arik/polybar-startup-test.txt