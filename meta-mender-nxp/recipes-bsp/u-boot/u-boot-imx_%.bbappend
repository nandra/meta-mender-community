require recipes-bsp/u-boot/u-boot-mender.inc

FILESEXTRAPATHS:prepend := "${THISDIR}/u-boot-imx:"

DEPENDS:append = " u-boot-scr"

SRC_URI:append:olimex-imx8mp-evb = " \
	file://0001-configs-olimex-imx8mp-evb-mender-integration.patch \
"

SRC_URI:append:imx93-11x11-lpddr4x-evk = " \
	file://0001-imx93-voipac-evk-Enable-various-configuration-for-me.patch \
"
BOOTENV_SIZE:olimex-imx8mp-evb = "0x4000"
BOOTENV_SIZE:imx93-11x11-lpddr4x-evk = "0x20000"

MENDER_UBOOT_ENV_STORAGE_DEVICE_OFFSET = "0x700000"
MENDER_UBOOT_ENV_STORAGE_DEVICE_OFFSET_2 = "0x740000"

MENDER_UBOOT_AUTO_CONFIGURE = "0"
