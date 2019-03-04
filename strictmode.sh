#!/bin/sh 
adb logcat |grep --color=always -E "StrictMode"
