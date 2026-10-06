setenv bootargs "console=serial0,115200 root=/dev/mmcblk0p2 rw rootwait"

load mmc 0:1 ${kernel_addr_r} zImage
load mmc 0:1 ${fdt_addr_r} bcm2837-rpi-zero-2-w.dtb

echo "Booting Raspberry Pi Zero 2 W Linux..."

bootz ${kernel_addr_r} - ${fdt_addr_r}
