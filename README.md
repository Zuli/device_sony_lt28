device_sony_lt28
================

The device files for Sony smart phone LT28 (codename "aoba"). This project purpose is to make the aosp source code changed as less as possible!

Use this device configuration, you need have aosp source code (branch 'android-4.0.4_r2.1') and the build envirenment. Follow aosp website(http://source.android.com/) to prepare the Build Environment.

1 Kernel Source Code

You need download the open kernel from sonymobile developer (http://developer.sonymobile.com/downloads/xperia-open-source-archives/open-source-archive-for-build-6-1-e-0-233/)

Untar the download file 6.1.E.0.233.tar.bz2 (`tar jxvf 6.1.E.0.233.tar.bz2`), copy all the files in folder 'kernel' to <aosp root dir>/kernel/sony/lt28

2 Setup for Build

The first time to setup the source code, you need run the following commands to apply patches to aosp:

* `source build/envsetup.sh`
* `. device/sony/lt28/apply_patches`

Run the following commands to compile:

* `source build/envsetup.sh`
* `lunch full_lt28-userdebug` or `lunch full_lt28-eng`
* `make`

3 Flash Phone

To flash the images produced make sure your device is unlocked, as described on
http://unlockbootloader.sonymobile.com/

Enter fastboot mode on the device by pressing volume up while inserting the USB
cable or execute `adb reboot bootloader`.

* `fastboot flash boot out/target/product/lt28/boot.img`
* `fastboot flash system out/target/product/lt28/system.img`
* `fastboot flash userdata out/target/product/lt28/userdata.img`
* `fastboot reboot`

Enjoy!
