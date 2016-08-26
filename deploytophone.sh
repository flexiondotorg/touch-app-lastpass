#!/bin/bash
rm *.click
click build ../"${PWD##*/}" 
adb shell "rm ~/Documents/*.click"
adb push *.click Documents
adb shell "pkcon install-local ~/Documents/*.click --allow-untrusted"

