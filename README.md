脚本介绍

## clearAppData.sh
快速进入系统的应用详情的清除缓存界面（有些国产系统很难找到这个界面），避免人工收到点击

## debugApp.sh
手动设置应用为调试模式，可以摆脱Android Studio的Debug依赖和设置延迟的问题，具体可以参考[一个简单实用的Android调试应用技巧
](https://droidyue.com/blog/2017/05/14/a-little-but-useful-debug-skill_for_android/)

## dumpCurrentActivity.sh
列出当前手机正在展示的Activity的名称，可以用来比较快速的代码定位

## dump_exceptions.sh
打印出应用崩溃和异常的日志。

## findCacheApk.sh
获取当前目录及其子目录下的apk文件地址并打印。 通常需要在项目根目录执行。使用场景为查找，安装或者删除apk文件。

## gcommit.sh
简单的进行git commit命令，一般会打开一个新的文本编辑器进行commit message 输入

## gfindx.sh
对当前目录及其子目录的文本文件进行内容查找，可以快速的查找到指定内容存在的文件名和对应的行数

## hdreset.sh
丢弃当前暂存区的修改，使当前分支恢复到之前的干净状态

## hybridLog.sh
打印H5和WebView相关的日志

## ifs_d.sh
快速打出debug包。主要包含了一些gradle参数配置，比如离线，并行和工作者线程数量等，以及项目相关的禁止听云和神策插件的配置。

## logcatPkg.py
按照包名过滤对应的日志输出。使用方法为`logcatPkg.py com.secoo`

## recentlyBranches.sh
列出最近操作的分支，符合Last Recently Used规则。

## rmCacheApks.sh
删除当前目录及其子目录下的apk文件。

## stopGradle.sh
强制杀掉Gradle Daemon进程，如果感觉你的打包明显要耗时超过平时，可以尝试使用这个命令。需要在项目根目录下执行。

## strictmode.sh
列出strictmode的违例日志。

## undoGitCommit.sh
撤销最近的一次git提交，被撤销的提交中包含的文件修改不会丢失，而是被重新放到暂存区。

## ftpUploadTestApk.sh
快速上传测试需要的包到ftp服务器，使用方法`ftpUploadTestApk.sh apk_file_path`

## gitUploadApk.sh
实现自动将生成的最新apk提交到git仓库，分发测试人员
