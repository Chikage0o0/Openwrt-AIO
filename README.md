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

如果需要安装软件，请至系统软件包内下载。本系统使用官方软件源的镜像 [https://mirrors.ustc.edu.cn/openwrt](https://mirrors.ustc.edu.cn/openwrt) 以及个人自建的[https://drive.939.me/openwrt](https://drive.939.me/openwrt)

如果你有好用的软件推荐，请发Issue附上**软件名**，**软件仓库地址**，**软件功能截图**

对于其他机型的适配，如果您可以帮忙测试固件，请联系TG：[@Chikagem](https://t.me/Chikagem)

## 常用软件包
如果安装后没有显示，请重启路由器。

如果安装后是英文，请按`CTRL+F5`。

|软件名|包名|
|----|----|
|USB支持|kmod-usb3|
|手机USB网络共享共享|kmod-usb-net-rndis|
|USB读写LED灯支持|kmod-usb-ledtrig-usbport|
|PASSWALL|luci-i18n-passwall-zh-cn|
|SSR-PLUS|luci-i18n-ssr-plus-zh-cn|
|MosDNS|luci-i18n-mosdns-zh-cn|
|iKoolProxy|luci-app-ikoolproxy|
|Xray|xray-core|
|V2ray|v2ray-core|
|Kms|luci-i18n-vlmcsd-zh-cn|
|Ipv6-Nat6帮手|luci-app-nat6-helper|
|网易uu加速器|luci-i18n-uugamebooster-zh-cn|
|灵缇加速器|luci-app-LingTiGameAcc|
|Docker管理器|luci-i18n-dockerman-zh-cn|
|启用BBR|kmod-tcp-bbr|
|QOS|luci-i18n-sqm-zh-cn|
|硬盘管理|luci-app-diskman|
|Argon主题|luci-theme-argon|
|Argon主题设置|luci-i18n-argon-config-zh-cn|
|高级设置|luci-app-advanced|
|高级重启|luci-i18n-advanced-reboot-zh-cn|
|阿里云盘Webdav|luci-i18n-aliyundrive-webdav-zh-cn|
|Aria2下载|luci-i18n-aria2-zh-cn|
|DDNS|luci-i18n-ddns-zh-cn|
|DDNS扩展|ddns-scripts*|
|FRPS|luci-i18n-frps-zh-cn|
|FRPC|luci-i18n-frpc-zh-cn|
|负载均衡|luci-i18n-mwan3-zh-cn|
|OpenClash|luci-app-openclash|
|网易云音乐解锁|luci-i18n-unblockmusic-zh-cn|
|UPNP|luci-i18n-upnp-zh-cn|
|Zerotier|luci-i18n-zerotier-zh-cn|
|终端|luci-i18n-ttyd-zh-cn|

以上软件均可在 系统->软件包 内下载安装，还有更多软件可以自行研究琢磨。