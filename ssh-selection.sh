#!/bin/bash

# sudo apt install dialog
# https://askubuntu.com/a/666179/647678

HEIGHT=18
WIDTH=48
CHOICE_HEIGHT=8
TITLE="SSH"
MENU="Choose a server:"

OPTIONS=(
1 "some-server.com"
2 "another-server.com"
)

CHOICE=$(dialog --clear \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
    1)
        ssh user@some-server.com
        echo -ne "\033]0;$*\007" # reset terminal title
        ;;
    2)
        ssh user@another-server.com
        echo -ne "\033]0;$*\007" # reset terminal title
        ;;
esac
