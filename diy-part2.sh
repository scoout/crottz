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
set -ex
echo '
CONFIG_MMC_TEST=y
CONFIG_MMC_DEBUG=y
CONFIG_MMC_SDHCI_ACPI=y
CONFIG_MMC_TIFM_SD=y
CONFIG_TIFM_CORE=y
CONFIG_TIFM_7XX1=y
CONFIG_MMC_WBSD=y
CONFIG_MMC_USHC=y
CONFIG_MMC_SDHCI_PLTFM=y
CONFIG_HOTPLUG_PCI_SHPC=y
' >> ./target/linux/x86/generic/config-5.10

exit 0

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
