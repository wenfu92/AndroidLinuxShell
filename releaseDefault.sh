#!/bin/bash
#coding:utf-8
#确保git仓库干净

#复制icon到对应项目目录

./gradlew --stop

./gradlew clean


cp -R -f /home/kevin/SecooChannelBuild/mipmapIcon/mipmap-default/* /home/kevin/SecooComponentMaster/app/src/main/res

./gradlew channelRelease -Pchannel=/home/kevin/SecooChannelBuild/channelFile/channel_default -PoutApkDir=/home/kevin/SecooChannelBuild/channelApk/default-apk/ -PisPropertyChannel=true -PtingyunType=release -PstatisticsDataUploadcount=10 -PsensorDataConfig=2

say "The task has been completed"

