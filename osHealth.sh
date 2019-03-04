#!/bin/bash 
adb logcat | grep -E "zygote64|Choreographer" --color=always
