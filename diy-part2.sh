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

# Modify login IP
# sed -i 's/192.168.6.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# Modify default SSID
# sed -i "s/ImmortalWrt-2.4G/Breakwa11/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
# sed -i "s/ImmortalWrt-5G/Breakwa11 ax/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh

# Modify ppp-down, add sleep 3. my source code is change, no need this
# sed -i '$a\\sleep 3' package/network/services/ppp/files/lib/netifd/ppp-down

# Insert two lines before the last line in 99-default-settings-chinese. For Modify opkg url, change mt7981 to filogic, del lines inlude passwall.
sed -i '/^exit 0$/i sed -i "s,mt7981,filogic,g" "package/base-files/files/etc/opkg/distfeeds.conf"\nsed -i '\''/passwall/d'\'' "package/base-files/files/etc/opkg/distfeeds.conf"' package/emortal/default-settings/files/99-default-settings-chinese
