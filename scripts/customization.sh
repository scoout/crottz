#!/bin/bash

set -ex

echo '
CONFIG_MMC_TEST=y
CONFIG_MMC_DEBUG=y
CONFIG_MMC_SDHCI_ACPI=y
CONFIG_MMC_TIFM_SD=y
CONFIG_TIFM_CORE=y
CONFIG_TIFM_7XX1=y
' >> ./target/linux/x86/generic/config-6.1

exit 0
