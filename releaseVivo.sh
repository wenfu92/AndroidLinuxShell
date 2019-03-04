#!/bin/bash
#coding:utf-8
#确保git仓库干净



./gradlew --stop

./gradlew clean

#复制icon到对应项目目录
cp -R -f /home/kevin/SecooChannelBuild/mipmapIcon/mipmap-vivo/* /home/kevin/SecooComponentMaster/app/src/main/res

./gradlew channelRelease -Pchannel=/home/kevin/SecooChannelBuild/channelFile/channel_vivo -PoutApkDir=/home/kevin/SecooChannelBuild/channelApk/vivo-apk/ -PisPropertyChannel=true -PtingyunType=release -PstatisticsDataUploadcount=10 -PsensorDataConfig=2



