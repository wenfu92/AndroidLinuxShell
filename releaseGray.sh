#!/bin/bash
#coding:utf-8
#确保git仓库干净


./gradlew --stop

./gradlew clean

#复制icon到对应项目目录
cp -R -f /home/kevin/SecooChannelBuild/mipmapIcon/mipmap-default/* /home/kevin/SecooComponentMaster/app/src/main/res

./gradlew channelRelease -Pchannel=/home/kevin/SecooChannelBuild/channelFile/channel_gray -PoutApkDir=/home/kevin/SecooChannelBuild/channelApk/graylevel-apk/ -PisBetaChannel=true -PisPropertyChannel=true -PtingyunType=beta -PstatisticsDataUploadcount=10 -PsensorDataConfig=2

say "The task has been completed"

