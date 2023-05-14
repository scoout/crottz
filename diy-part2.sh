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
set -ex
echo '
CONFIG_ACPI=y
CONFIG_X86_ACPI_CPUFREQ=y
CONFIG_MMC=y
CONFIG_MMC_BLOCK=y
CONFIG_SDIO_UART=y
CONFIG_MMC_TEST=y
CONFIG_MMC_DEBUG=y
CONFIG_MMC_SDHCI=y
CONFIG_MMC_SDHCI_ACPI=y
CONFIG_MMC_SDHCI_PCI=y
CONFIG_MMC_TIFM_SD=y
CONFIG_TIFM_CORE=y
CONFIG_TIFM_7XX1=y
' >> ./target/linux/x86/generic/config-5.10
exit 0
sed -i '23i base-files busybox ca-bundle dropbear e2fsprogs firewall4 fstools openssh-sftp-server kmod-3c59x kmod-8139too kmod-button-hotplug kmod-e100 kmod-e1000 kmod-forcedeth kmod-fs-vfat kmod-natsemi kmod-ne2k-pci kmod-nft-offload kmod-pcnet32 kmod-r8169 kmod-sis900 kmod-tg3 kmod-via-rhine kmod-via-velocity libc libgcc libustream-wolfssl logd mkf2fs mtd netifd nftables odhcp6c odhcpd-ipv6only opkg partx-utils ppp ppp-mod-pppoe procd procd-seccomp procd-ujail uci uclient-fetch urandom-seed urngd block-mount blkid parted dosfstools lsblk pv losetup uuidgen bash perl btrfs-progs fdisk -dnsmasq dnsmasq-full cgi-io libiwinfo libiwinfo-data libiwinfo-lua liblua liblucihttp liblucihttp-lua libubus-lua lua luci luci-app-firewall luci-app-opkg luci-base luci-lib-base luci-lib-ip luci-lib-jsonc luci-lib-nixio luci-mod-admin-full luci-mod-network luci-mod-status luci-mod-system luci-proto-ipv6 luci-proto-ppp luci-ssl luci-theme-bootstrap px5g-wolfssl rpcd rpcd-mod-file rpcd-mod-iwinfo rpcd-mod-luci rpcd-mod-rrdns uhttpd uhttpd-mod-ubus usbutils kmod-usb-storage htop kmod-usb-net kmod-usb-net-huawei-cdc-ncm kmod-usb-net-cdc-ether kmod-usb-acm kmod-usb-net-qmi-wwan kmod-usb-net-rndis kmod-usb-serial-qualcomm kmod-usb-net-sierrawireless kmod-usb-ohci kmod-usb-serial kmod-nls-utf8 kmod-usb-serial-option kmod-usb-serial-sierrawireless kmod-usb-uhci kmod-usb2 kmod-usb3 kmod-usb-net-ipheth kmod-usb-net-cdc-mbim usbmuxd libusbmuxd-utils libimobiledevice-utils mbim-utils qmi-utils uqmi umbim modemmanager luci-proto-modemmanager luci-proto-3g luci-proto-ncm usb-modeswitch nano picocom minicom wget kmod-usb-net-asix kmod-usb-net-asix-ax88179 kmod-usb-net-rtl8150 kmod-usb-net-rtl8152 ca-certificates luci-compat curl luci-app-watchcat iptables coreutils coreutils-nohup ipset ip-full iptables-mod-tproxy iptables-mod-extra libcap libcap-bin ruby ruby-yaml unzip kmod-tun ip6tables-mod-nat kmod-inet-diag kmod-ipt-nat kmod-nft-tproxy kmod-hwmon-core lm-sensors git lscpu lm-sensors-detect cypress-firmware-43455-sdio wpa-supplicant hostapd kmod-mmc kmod-mmc-spi kmod-spi-bitbang kmod-spi-dev kmod-spi-gpio kmod-brcmutil kmod-brcmfmac kmod-cfg80211 kmod-mac80211 tune2fs resize2fs kmod-amazon-ena kmod-amd-xgbe kmod-bnx2 kmod-e1000e kmod-igb kmod-igc kmod-ixgbe kmod-nft-compat libiconv-full2 python3 coreutils-timeout kmod-fs-ext4 f2fs-tools kmod-fs-f2fs kmod-usb-storage-uas cfdisk netdata block-mount kmod-fs-ext4 e2fsprogs parted libiconv-full2' >> ./target/linux/x86/generic/Makefile 
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.10/g' target/linux/x86/Makefile

#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
