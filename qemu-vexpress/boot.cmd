# Set console boot parameters for Versatile Express Cortex-A9
setenv bootargs "console=ttyAMA0,115200n8 root=/dev/mmcblk0p2 rw rootwait"

# Load Linux Kernel zImage into RAM
load mmc 0:1 ${kernel_addr_r} zImage

# Load Device Tree Blob (DTB) into RAM
load mmc 0:1 ${fdt_addr_r} vexpress-v2p-ca9.dtb

# Print status message to serial console
echo "Booting Linux kernel with DTB from MMC..."

# Boot 32-bit ARM zImage: bootz <kernel_addr> <ramdisk_addr|-> <fdt_addr>
bootz ${kernel_addr_r} - ${fdt_addr_r}