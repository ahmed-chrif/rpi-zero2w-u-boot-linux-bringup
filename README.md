# Raspberry Pi Zero 2 W – U-Boot and Linux Bring-up

Hands-on Embedded Linux bring-up project covering U-Boot, Linux kernel, Device Tree, SD-card boot and a minimal BusyBox userspace.

## Project progression

### Stage 1 — Bootlin Workshop: QEMU VExpress Cortex-A9

I first followed the Bootlin Embedded Linux workshop using a QEMU-emulated VExpress Cortex-A9 platform.

This stage allowed me to practice:

* U-Boot configuration and compilation
* U-Boot commands and environment
* SD-card image and partition setup
* Persistent U-Boot environment
* FAT-based U-Boot environment storage
* QEMU networking
* Basic bootloader workflow

The QEMU environment provided a controlled platform before moving to real hardware.

### Stage 2 — Raspberry Pi Zero 2 W

I then reproduced the boot process independently on a Raspberry Pi Zero 2 W.

The bring-up included:

* U-Boot configuration and compilation for ARM64
* SD-card boot preparation
* Linux kernel compilation
* Raspberry Pi Zero 2 W Device Tree
* Minimal BusyBox userspace
* UART-based debugging
* U-Boot boot command scripting

A U-Boot boot script automatically loads the Linux kernel and Device Tree from the SD card and starts Linux.

## Boot Flow

```text
Raspberry Pi firmware
        ↓
      U-Boot
        ↓
    boot.scr
        ↓
 Linux kernel + DTB
        ↓
Kernel initialization
        ↓
 BusyBox rootfs
        ↓
    Userspace
```

## Main Technologies

* U-Boot
* Linux kernel
* Device Tree
* ARM64 / AArch64
* Raspberry Pi Zero 2 W
* QEMU
* BusyBox
* SD-card boot
* UART
* Cross-compilation
* Bash
* Boot scripting

## Versions

| Component      | Version                 |
| -------------- | ----------------------- |
| U-Boot         | 2023.01                 |
| Linux kernel   | 6.18.54                 |
| BusyBox        | 1.36.1                  |
| Final target   | Raspberry Pi Zero 2 W   |
| Initial target | QEMU VExpress Cortex-A9 |

## Repository Structure

```text
.
├── qemu-vexpress/
│   ├── configs/
│   └── README.md
│
├── rpi-zero-2w/
│   ├── configs/
│   ├── boot/
│   └── rootfs/
│
├── docs/
├── scripts/
├── .gitignore
└── README.md
```

Large upstream source trees, disk images and generated build artifacts are intentionally excluded from this repository.

## Result

The final Raspberry Pi Zero 2 W deployment successfully booted through U-Boot, loaded the Linux kernel and Device Tree from the SD card, initialized Linux and reached the BusyBox userspace.

This project started from the Bootlin U-Boot workshop on an emulated ARM platform and was then reproduced on real ARM64 hardware.
