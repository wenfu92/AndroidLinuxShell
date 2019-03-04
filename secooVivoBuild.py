#!/usr/bin/env python

import os  
import sys
import shutil
import datetime

def mkdir(path):
   
   path=path.strip()
   path=path.rstrip("\\")
   isExists=os.path.exists(path)
   if not isExists:
        os.makedirs(path) 
        print path+' success'
        return True
   else:
        print path+' fault'
mkpath="/home/kevin/buildApk"
mkdir(mkpath)


import os,shutil
dir1 = "/home/kevin/sss/"
dir2 = "/home/kevin/shiku/"
print('---------------')
for root1, dirs1, file1 in os.walk(dir1):
    print('---------------')
    for a in file1:
       print('---------------')
       shutil.copy(os.path.join(dir1, a), r'/home/kevin/shiku')

resource_dir=/home/kevin/sss
target_dir=/home/kevin/shiku/
filelist=`ls $resource_dir`
for file in $filelist
do
res_file=`echo $file | awk -F "/" '{print $(NF-1)}'`
echo $res_file
echo $file
cp $file $target_dir$res_file
done

#os.system('./gradlew channelRelease -Pchannel=/home/kevin/SecooChannelFile/channel_1 -PoutApkDir=/home/kevin/channelApk')



