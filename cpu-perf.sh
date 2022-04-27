#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="NIELS-SCRIPT"
TITLE="cpufreq/scaling_governor"
MENU="Choose one of the following options:"

OPTIONS=(1 "CPU POWERSAVE"
         2 "CPU PERFORMANCE")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
            echo "CPU POWERSAVE : Done"
            ;;
        2)
            echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
            echo "CPU PERFORMANCE : Done"
            ;;
esac
