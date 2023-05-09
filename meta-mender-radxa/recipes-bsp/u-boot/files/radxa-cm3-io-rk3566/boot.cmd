run mender_setup;
setenv bootargs console=${console} console=ttyFIQ0,1500000N8 console=tty1 root=${mender_kernel_root} rootwait panic=10 ${extra}
mmc dev ${mender_uboot_dev};
load ${mender_uboot_root} ${kernel_addr_r} /boot/Image;
load ${mender_uboot_root} ${fdt_addr_r} /boot/${mender_dtb_name};
booti ${kernel_addr_r} - ${fdt_addr_r}
run mender_try_to_recover;
