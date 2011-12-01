#!/bin/sh

cd root
find . | cpio -o -H newc | gzip >../ramdisk.img
cd ..
cd recovery
find . | cpio -o -H newc | gzip >../ramdisk-recovery.img
cd ..
cd ..
