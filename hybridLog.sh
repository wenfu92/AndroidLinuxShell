#!/bin/bash 
adb logcat | grep -E "JsCallNativeHandle|openWebPage|CONSOLE|cleanUp" --color=always
