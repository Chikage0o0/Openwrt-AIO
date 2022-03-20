#!/bin/bash

# 编译固件
make image PROFILE="youhua_wr1200js" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg -kmod-usb3 -kmod-usb-ledtrig-usbport" FILES="files"

