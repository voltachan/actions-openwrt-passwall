#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/tzxiaozhen88/luci-app-koolproxyR ./openwrt/package/lean/luci-app-koolproxyR
./openwrt/scripts/feeds update -a
./openwrt/scripts/feeds install -a
