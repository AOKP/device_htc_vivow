#!/system/bin/sh
#Softkey Rotation helper script
#By St.Matt

if [ $1 -eq 1 ] #lights in landscape mode
then
    brightness=`cat /sys/class/leds/button-backlight-portrait/brightness`
    if [ $brightness -ne 0 ] #Prevent issue when going from landscape 90d to 270d
    then
        echo $brightness > /sys/class/leds/button-backlight-landscape/brightness
        echo 0 > /sys/class/leds/button-backlight-portrait/brightness
    fi
else #lights in portrait mode
    brightness=`cat /sys/class/leds/button-backlight-landscape/brightness`
    echo $brightness > /sys/class/leds/button-backlight-portrait/brightness
    echo 0 > /sys/class/leds/button-backlight-landscape/brightness
fi
