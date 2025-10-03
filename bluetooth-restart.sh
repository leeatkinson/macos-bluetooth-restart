#!/bin/sh

echo "Restarting Bluetooth..."
blueutil --power 0 && blueutil --power 1

echo "Current Bluetooth connections (Press Ctrl+C to exit):"
prev_lines=0
while true; do
    sleep 1
    if [ $prev_lines -gt 0 ]; then
        tput cuu $prev_lines
        tput ed
    fi
    connections=$(blueutil --connected)
    if [ -n "$connections" ]; then
        echo "$connections"
        prev_lines=$(echo "$connections" | wc -l)
    else
        prev_lines=0
    fi
done
exit 0
