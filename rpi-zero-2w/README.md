# Raspberry Pi Zero 2 W Bring-up

## Target

- Board: Raspberry Pi Zero 2 W
- CPU: ARM Cortex-A53
- Architecture: ARM64 / AArch64
- Boot medium: microSD
- Bootloader: U-Boot 2023.01
- Kernel: Linux 6.18.54
- Userspace: BusyBox 1.36.1

## Boot components

The SD card contains the required boot files, including:

- U-Boot
- Linux kernel
- Raspberry Pi Zero 2 W Device Tree
- U-Boot boot script

The boot script loads the kernel and DTB and starts Linux.

## Configuration

The U-Boot and Linux configurations used for the build are stored in:

    configs/u-boot.config
    configs/linux.config

## Boot script

The U-Boot boot script is located at:

    boot/boot.cmd

The generated `boot.scr` file is intentionally not committed because it is a generated artifact.

## Userspace

A minimal BusyBox-based root filesystem was used to reach a Linux shell after kernel initialization.
