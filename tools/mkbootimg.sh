#!/bin/sh

kernel=
ramdisk=
output=
rpm=device/sony/lt28/prebuilt/RPM.bin
ignore=

store_var=
for arg in $@; do
        case "$arg" in
                "--kernel") store_var="kernel";;
                "--ramdisk") store_var="ramdisk";;
                "-o") store_var="output";;
                "--output") store_var="output";;
                "--rpm") store_var="rpm";;
                "--second") store_var="ignore";;
                "--cmdline") store_var="ignore";;
                "--board") store_var="ignore";;
                "--base") store_var="ignore";;
                "--pagesize") store_var="ignore";;
                *) eval $store_var="$arg" ;;
        esac
done;

#echo kernel=$kernel
#echo ramdisk=$ramdisk
#echo output=$output
#echo rpm=$rpm
#echo ignore=$ignore
#echo store_var=$store_var

rm $OUT/combinedroot* -rf
mkdir -p $OUT/combinedroot/
cp -R $OUT/root/* $OUT/combinedroot/
#cp -R $OUT/recovery/root/sbin/* $OUT/combinedroot/sbin/
out/host/linux-x86/bin/mkbootfs $OUT/combinedroot/ > $OUT/combinedroot.cpio
cat $OUT/combinedroot.cpio | gzip > $OUT/combinedroot.fs
ramdisk=$OUT/combinedroot.fs

device/sony/lt28/tools/mkelf.py -o $output $kernel@0x40208000 $ramdisk@0x41500000,ramdisk $rpm@0x20000,rpm
