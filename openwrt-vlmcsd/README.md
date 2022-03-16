# openwrt-vlmcsd
vlmcsd package for OpenWrt envirement


# How to build
first, download OpenWrt SDK archive files, then extract it, and go into the extracted directory.
```
$ tar xf openwrt-sdk-18.06.1-xxx.Linux-x86_64.tar.gz
$ cd openwrt-sdk-18.06.1-xxx.Linux-x86_64
```

second, git clone this repository to the Openwrt SDK's package directory
```
$ git clone https://github.com/siwind/openwrt-vlmcsd package/vlmcsd
$ make package/vlmcsd/compile V=s
```

third, when build process successfully finished, the vlmcsd_xxx.ipk will be in bin/package directory.

# Installation on OpenWrt
upload the ipk file to openwrt system, then install it.
```
# opkg update
# opkg install vlmcsd.ipk
```

# Configuration 
add the following line to the end of dnsmasq.conf
```
# cat /etc/dnsmasq.conf
localise-queries
bogus-priv
expand-hosts
srv-host=_vlmcs._tcp.lan,OpenWrt.lan,1688,0,100
```

add this lines to /etc/hosts
```
192.168.0.1        OpenWrt    OpenWrt.lan      //with your proper IP address
```

restart service:
```
/etc/init.d/vlmcsd enable && /etc/init.d/vlmcsd start && /etc/init.d/dnsmasq restart
```

# Luci Web UI
See here: [luci-app-vlmcsd](https://github.com/siwind/luci-app-vlmcsd.git "")


