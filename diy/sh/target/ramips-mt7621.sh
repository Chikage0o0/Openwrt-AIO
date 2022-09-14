#!/bin/bash

# 编译固件
make image PROFILE="youhua_wr1200js" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg -kmod-usb3 -kmod-usb-ledtrig-usbport" FILES="files"

make image PROFILE="lenovo_newifi-d1" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg -kmod-usb3 -kmod-usb-ledtrig-usbport" FILES="files"

make image PROFILE="xiaomi_mi-router-3g" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg -kmod-usb3 -kmod-usb-ledtrig-usbport" FILES="files"

make image PROFILE="xiaomi_mi-router-3-pro" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg -kmod-usb3 -kmod-usb-ledtrig-usbport" FILES="files"

make image PROFILE="xiaomi_mi-router-3g-v2" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg" FILES="files"

make image PROFILE="xiaomi_mi-router-4" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg" FILES="files"

make image PROFILE="phicomm_k2p" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg" FILES="files"

make image PROFILE="xiaomi_mi-router-4a-gigabit" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg" FILES="files"

make image PROFILE="xiaomi_mi-router-ac2100" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg" FILES="files"

make image PROFILE="xiaomi_redmi-router-ac2100" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg" FILES="files"

make image PROFILE="dlink_dir-878-a1" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg" FILES="files"

make image PROFILE="hiwifi_hc5962" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat luci-lib-ipkg -kmod-usb3" FILES="files"
