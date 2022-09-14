#!/bin/bash
# 修改分区大小
sed -i '/CONFIG_TARGET_KERNEL_PARTSIZE/ c\CONFIG_TARGET_KERNEL_PARTSIZE=64' .config
sed -i '/CONFIG_TARGET_ROOTFS_PARTSIZE/ c\CONFIG_TARGET_ROOTFS_PARTSIZE=448' .config

# 编译固件
make image PROFILE="friendlyarm_nanopi-r2s" PACKAGES="luci luci-lib-ipkg -dnsmasq dnsmasq-full luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn luci-i18n-base-zh-cn luci-compat kmod-nft-fullcone" FILES="files"
