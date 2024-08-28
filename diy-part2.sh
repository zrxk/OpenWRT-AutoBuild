#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.254/g' package/base-files/files/bin/config_generate
# Modify default Ver
# sed -i 's/R23.7.7/R23.7.7 Build By LawKim/g' package/lean/default-settings/files/zzz-default-settings
# Modify default Themes
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile
sed -i 's/bootstrap/argon/g' feeds/luci/collections/luci-light/Makefile
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
git clone -b 18.06 https://github.com/zxlhhyccc/luci-app-v2raya.git feeds/small8/luci-app-v2raya
cd feeds/luci/themes
rm -rf luci-theme-argon
rm -rf luci-theme-argon-config
git clone -b https://github.com/kenzok78/luci-theme-design.git luci-theme-design
git clone -b https://github.com/jerrykuku/luci-theme-argon.git luci-theme-argon
git clone -b https://github.com/jerrykuku/luci-app-argon-config.git luci-app-argon-config
