# polybar launcher

# kill any other instances of polybar
killall -q polybar

# wait for a second to start it up
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# start it
polybar defaultbar -r

# echo the success
echo "Bar launched!"
