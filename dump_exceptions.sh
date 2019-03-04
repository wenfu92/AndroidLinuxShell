#!/bin/sh 
adb logcat |grep --color=always -E "System.err|AndroidRuntime"
