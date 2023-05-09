inherit image_types

# It is not possible to specific this using MENDER_IMAGE_BOOTLOADER_FILE/OFFSET,
# instead we use an append to "gptimg" to embedd the bootloader
IMAGE_CMD:gptimg:append() {
    outimgname="${IMGDEPLOYDIR}/${IMAGE_NAME}.$suffix"
    dd if=${DEPLOY_DIR_IMAGE}/idbloader.img of=${outimgname} conv=notrunc seek=64
    dd if=${DEPLOY_DIR_IMAGE}/u-boot.itb of=${outimgname} conv=notrunc seek=16384
}

