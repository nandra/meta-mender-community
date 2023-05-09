require u-boot-radxa.inc

SRC_URI:remove = "file://0003-Integration-of-Mender-boot-code-into-U-Boot.patch"
SRC_URI:append = " \
	file://0003-Integration-of-Mender-boot-code-into-U-Boot-modified.patch \
	file://0002-Enable-config-for-mmc-env-storage.patch \
"


