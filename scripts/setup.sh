# File: setup.sh
# Author: Alex Barney
# Simple setup script for my Arch Linux rice

# Power on bluetooth
bpo="bluetoothctl power on"

# Set term colors
setcol="wal -i Downloads/papers.co-ar67-4k-sierra-apple-wallpaper-art-mountain-sunset-1600x900.jpg";

# Set locale
#setloc=""

exec $bpo & $setcol

