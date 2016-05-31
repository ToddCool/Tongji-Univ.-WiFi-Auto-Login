## 功能简介

由于同济大学校内的两个WiFi（`tongji.portal`, `tongji.student.portal`）长时间无网络活动会自动下线，此时需要重新进入登录页面进行登录，较为繁琐。本脚本可以实现自动侦测网络状态并登录。


## 适用条件

1. 本脚本仅适用于**同济大学校园内**的`tongji.portal`以及`tongji.student.portal`校园网的自动登录
2. 本脚本仅支持Mac系统下运行

## 安装方法
1. 将项目clone到本地
2. 将`UserName1`, `PassWord1`替换为你的`tongji.portal`网络账号和密码
3. 将`UserName2`, `PassWord2`替换为你的`tongji.student.portal`网络账号和密码
4. 运行：`chmod +x RunMe.sh`
5. 运行：`./RunMe.sh`[^ggrep_needed]

## 使用方法
理论上不需要任何设置，运行`RunMe.sh`文件后`Daemon`便会自动运行。进行完上述操作，你可以尝试去登录页面注销掉网络，等1~2分钟，查看是否网络已经自动验证。如果没有自动验证，这时可以去查看`/Library/Logs/WiFiAutoLogin-errorlogfile.log`，根据其中提示进行后续操作。

## Q&A
Q. **这个脚本对学校内的所有上述名称的WiFi均适用吗？**

A. 只实验了嘉定校区部分网络，不能保证完全使用所有地方。但是理论上可以使用所有地方。

Q. **如果我只有两个网络中的一个账号怎么办？**

A. 不用担心，只要将你有的账号和密码填好，将你的Mac连接到该网络，脚本还能正常工作。

Q. **这个脚本是开机运行的吗？需要我每次开机进行什么操作？**

A. 这个脚本是开机运行的，当你安装之后并且验证可用，便再也不用管它了。

Q. **当我真正想注销的时候要怎么操作？这个脚本一直帮我登录！**

A. 在命令行中运行：`sudo launchctl unload /Library/LaunchDaemons/com.Tongji.AutoLoginWiFi.plist`

Q. **安装之后我可以将本地clone文件夹删除掉吗？**

A. 可以

## 参考信息
如果你想了解下代码工作原理，可以参考我的这篇博文：

> [Mac下自动登录WiFi](http://solittt.me/mac下自动登录wifi/)




[^ggrep_needed]: 需要`gnu grep`支持，可以使用`homebrew`安装，安装命令为：`brew install grep`. `homebrew`使用请参考[`homebrew github`](http://brew.sh) 



