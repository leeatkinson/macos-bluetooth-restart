# macos-bluetooth-restart
Script to restart Bluetooth on Mac and loop showing current bluetooth connections.

Sometimes, my bluetooth keyboard or mouse doesn't connect automatically to my Mac. This script allows me to restart Bluetooth and then shows the currently-connected Bluetooth devices. Once I can see that both devices are connected, I can end the script manually.

To install:

1. Brew-install blueutil: `brew install blueutil`
2. Download bluetooth-restart.sh
3. Make it executable: `chmod +x ./bluetooth-restart.sh`
4. Run it: `./bluetooth-restart.sh`
5. Wait for all the devices you require to show connected
6. Quit it: `ctrl-c`
