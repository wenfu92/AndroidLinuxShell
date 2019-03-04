#!/bin/bash 
find . -name "*.apk" | xargs rm -rf 
bash ./gradlew --configure-on-demand --parallel --offline --max-workers=`cat /proc/cpuinfo | grep processor | wc -l` assembleDebug  -PdisableSensorDataPlugin -PdisableTingyunPlugin -PstatisticsDataUploadcount=1  -PsensorDataConfig=1
echo "installing apk file---------------------------------------------------------------------------"
find . -name "*.apk" | xargs echo 
find . -name "*.apk" | xargs adb install -r
adb shell am start -n com.secoo/com.secoo.app.mvp.ui.activity.LauncherActivity
say "The task has been completed"
