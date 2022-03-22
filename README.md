# Openwrt-AIO
本仓库提供了定时更新第三方软件源，编译IPK并上传网盘，建立软件源并签名，自定义并通过**Imagebuild**快速编译出固件。

This repository provides regular updates to third-party software sources, compiles IPK and uploads it to a network drive, builds software sources and signs them, customizes and quickly compiles firmware via Imagebuild.

本仓库默认仅提供自用的IPK以及自用设备的固件，对于没有提供的固件请按照下面的编译说明FORK仓库后进行修改后编译。

## 固件
目前提供的可用固件有：
 - [x86-64](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_x86-64) 加入了2.5G网卡支持以及Vmxnet3的驱动支持
 - [Youhua WR1200JS](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_ramips-mt7621)  去掉了默认的usb支持，可以在软件包中装入
 - [Lenovo newifi D1](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_ramips-mt7621)  去掉了默认的usb支持，可以在软件包中装入
 - [Redmi Router AC2100](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_ramips-mt7621)  
 - [Xiaomi Router AC2100](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_ramips-mt7621)  
 - [Phicomm k2p](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_ramips-mt7621)  
 - [Xiaomi Router 4](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_ramips-mt7621)  
 - [Xiaomi Router 4a Gigabit](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_ramips-mt7621)  
 - [R2S](https://github.com/Chikage0o0/Openwrt-AIO/releases/tag/Openwrt_21.02.2_rockchip-armv8)

所有的固件均为无任何附加软件的纯净固件，仅对中国用户进行设置上的优化。

如果需要安装软件，请至系统软件包内下载。本系统使用官方软件源的镜像 [https://mirror.ustc.edu.cn/openwrt](https://mirror.ustc.edu.cn/openwrt) 以及个人自建的[https://drive.939.me/openwrt](https://drive.939.me/openwrt)

如果你有好用的软件推荐，请发Issue附上**软件名**，**软件仓库地址**，**软件功能截图**

对于其他机型的适配，如果您可以帮忙测试固件，请联系TG：[@Chikagem](https://t.me/Chikagem)
