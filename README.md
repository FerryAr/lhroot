# Linux Chroot Installer

Systemless Linux chroot installer and Linux chroot boot script

## Require
- Rooted with Magisk
- Busybox installed
- Coreutils for make_image
- Mke2fs for make_image
- This module

![Alpine-Linux-Android](https://i.ibb.co/HPpBCGn/alpine-linux.jpg)

## Usage
``
lhroot
``

and follow the instructions

After installation to boot into Linux Chroot use :
``
bootlinux
``

To unmount bind directory use :
``
killlinux
``

To make image use :
``
make_image <path to img> <img name.img> <size img in MB>
``

To mount image use : 
``
mount_image <path to img> <path to linux directory>
``

## Available Distro
- Alpine Linux, Installed on /data/alpine
- Arch Linux, Installed on /data/arch
- Debian, Installed on /data/debian
- Kali Linux, Installed on /data/kali
- Ubuntu, Installed on /data/ubuntu

...more distro added soon

## Supported Architectures
- arm
- aarch64
- x86
- x64

## Credits
- [mod-util](https://github.com/veez21/mod-util) by @veez21
- Magisk by @topjohnwu

## License
Licensed under GNU GPL v3

The rootfs tarball is taken from AnLinux Resources [Repository](https://github.com/EXALAB/Anlinux-Resources)

## Support
- Open issue here
- or visit [XDA Thread](https://forum.xda-developers.com/showthread.php?t=4142803)

## Note
- This module will turn SELinux from enforcing to permissive to ensure linux is working properly.
- If you want to store your chroot in image file, make image file first using make_image then mount the image using mount_image script.
- coreutils can be installed via @Zackptg5 's [ccbins](https://github.com/Magisk-Modules-Repo/ccbins) module.
- mke2fs can be installed via my [e2fsprogs module](https://github.com/FerryAr/e2fsprogs-arm), support for arm device only, other arch will be use busybox mke2fs applets,will use ext2 filesystem and limited 2GB image size.
