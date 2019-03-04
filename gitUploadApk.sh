#!/bin/bash 
#echo `find . -name "*.apk" | xargs realpath`
str=`find . -name "*.apk" | xargs realpath`

echo $str

#if [ ! -d ~/secooUploadApk ];then
#    mkdir ~/secooUploadApk
#else 
#$    echo secooUploadApkFile is exist
#fi        

strSub=${str##*/}

cd ~
git clone git@gitlab.secoo.com:wangkai-ye/secooAndroidApk.git
cp -R -f $str ~/secooAndroidApk
cd ~/secooAndroidApk
git pull origin master
git add .
git commit -am "测试包"
git push origin master

echo ""
echo ""
echo "git upload is complete, Please copy this text for test:"
echo "http://gitlab.secoo.com:8090/wangkai-ye/secooAndroidApk/raw/master/"$strSub
