# Linux Chroot Installer

Systemless Linux chroot installer and Linux chroot boot script

## Requirements
- Rooted with Magisk
- busybox installed
- coreutils for make_image
- mke2fs for make_image
- This module

![Manjaro-Linux-Android](https://i.ibb.co/gdpw8QG/lhroot.png)

## NOTICE
Due to many cases like [this](https://github.com/FerryAr/lhroot/issues/18) and [this](https://github.com/FerryAr/lhroot/issues/21). Please make sure ALL mountpoint on chroot folder is UNMOUNTED before removing chroot folder. I don't responsible for lost all data, phone bricking, etc. You can check this repository that all the code I wrote, doesn't intentionally remove your data or bricking your phone. Use this module if you are familiar about Linux Enviroment. DWYOR!

## Usage

```console
lhroot
```

and follow the instructions

After installation to boot into Linux Chroot use :

```console
bootlinux
```

After v2.1 you can run 2 or more chroot instances, just pass chroot folder, e.g.
```console
bootlinux /data/manjaro
```

To unmount bind directory use :

```console
killlinux
```

After v2.1 you can terminate specific instance, just pass chroot folder, e.g.
```console
killlinux /data/manjaro
```

To make image use :

```console
make_image <path to img> <img name.img> <size img in MB>
```

To mount image use : 

```console
mount_image <path to img> <path to linux directory>
```
## Automatically Start Chroot Linux on Device Boot

If you have installed the lhroot module, you can simply place the following script in Magisk(or KernelSU)'s boot script directory (/data/adb/service.d):

```
#!/bin/sh
/system/bin/bootlinux
```

Assuming the script is named lhroot.sh, give it executable permissions with `chmod +x lhroot.sh`.

Restart your device, and you will see that the Linux system will automatically start along with the device boot.

This functionality is provided by Magisk or KernelSU.

For more information, please refer to the following resources:

- Magisk: [Boot Scripts](https://topjohnwu.github.io/Magisk/guides.html#boot-scripts)
- KernelSU: [Module Guide - Boot Scripts](https://kernelsu.org/guide/module.html#boot-scripts)

## Available Distro
- Alpine Linux, Installed on /data/alpine
- Arch Linux, Installed on /data/arch
- Debian, Installed on /data/debian
- Fedora, Installed on /data/fedora
- Kali Linux, Installed on /data/kali
- Manjaro ARM, Installed on /data/manjaro
- Ubuntu, Installed on /data/ubuntu
- Void Linux, Installed on /data/void

...more distro added soon

## Supported Architectures
- arm
- aarch64
- x86
- x64

## TODO
- [ ] Migrate all file used in lhroot to my repo (WIP)
- [ ] Built in Audio support
- [ ] Cross compile all dependancies

## Credits
- [mod-util](https://github.com/veez21/mod-util) by @veez21
- Magisk by @topjohnwu

## License
Licensed under GNU GPL v3

~~The rootfs tarball is taken from AnLinux Resources [Repository](https://github.com/EXALAB/Anlinux-Resources)~~
Most of distro rootfs tarballs had been rebuilt and stored at [lhroot-repo](https://github.com/FerryAr/lhroot-repo)

## Support
- Open issue here
- or visit [XDA Thread](https://forum.xda-developers.com/showthread.php?t=4142803)

## Note
- If you want to store your chroot in image file, make image file first using make_image then mount the image using mount_image script.
- coreutils can be installed via @Zackptg5 's [ccbins](https://github.com/Magisk-Modules-Repo/ccbins) module.
- mke2fs can be installed via my [e2fsprogs module](https://github.com/FerryAr/e2fsprogs-arm), support for arm device only, other arch will be use busybox mke2fs applets,will use ext2 filesystem and limited 2GB image size.
