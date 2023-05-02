FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

MENDER_UBOOT_AUTO_CONFIGURE = "0"

include recipes-bsp/u-boot/u-boot-mender.inc

PROVIDES += "u-boot"
RPROVIDES:${PN} += "u-boot"

SRC_URI:append = " \
	file://0001-Added-mender-defines.patch \
	file://0002-Do-not-update-serial.patch \
	file://boot.cmd \
"
