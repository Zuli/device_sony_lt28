
DEVICE_PACKAGE_OVERLAYS += device/sony/lt28/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_PACKAGES := \
    lights.msm8660

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/sony_logo.rle:root/logo.rle \
    $(LOCAL_PATH)/prebuilt/sony_bootanimation.zip:system/media/bootanimation.zip

# Custom init / uevent
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.semc.rc:root/init.semc.rc \
    $(LOCAL_PATH)/config/init.semc.usb.rc:root/init.semc.usb.rc \
    $(LOCAL_PATH)/config/ueventd.semc.rc:root/ueventd.semc.rc

# EGL config, need this to get into luncher
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/egl.cfg:system/lib/egl/egl.cfg \
    $(LOCAL_PATH)/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so

# Display firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw

# HAL gralloc, will hang on first screen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    $(LOCAL_PATH)/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    $(LOCAL_PATH)/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# QCOM Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Prebuilt Copy for Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
    $(LOCAL_PATH)/prebuilt/lib/libacdbloader.so:obj/lib/libacdbloader.so \
    $(LOCAL_PATH)/prebuilt/lib/libacdbmapper.so:obj/lib/libacdbmapper.so \
    $(LOCAL_PATH)/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    $(LOCAL_PATH)/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    $(LOCAL_PATH)/prebuilt/lib/libacdbmapper.so:system/lib/libacdbmapper.so \
    $(LOCAL_PATH)/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
    $(LOCAL_PATH)/prebuilt/lib/libdiag.so:system/lib/libdiag.so

# Audio firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.b00:system/etc/firmware/q6.b00 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.b01:system/etc/firmware/q6.b01 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.b02:system/etc/firmware/q6.b02 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.b03:system/etc/firmware/q6.b03 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.b04:system/etc/firmware/q6.b04 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.b05:system/etc/firmware/q6.b05 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.b06:system/etc/firmware/q6.b06 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.b07:system/etc/firmware/q6.b07 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/q6.mdt:system/etc/firmware/q6.mdt

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    libaudioutils

# Media
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc

# Media firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw

# Media profiles
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

# Prebuilt Copy for Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/clearpad.kl:system/usr/keylayout/clearpad.kl \
    $(LOCAL_PATH)/config/clearpad.idc:system/usr/idc/clearpad.idc \
    $(LOCAL_PATH)/config/fuji-keypad.kl:system/usr/keylayout/fuji-keypad.kl \
    $(LOCAL_PATH)/config/gpio-key.kl:system/usr/keylayout/gpio-key.kl \
    $(LOCAL_PATH)/config/keypad-pmic-fuji.kl:system/usr/keylayout/keypad-pmic-fuji.kl \
    $(LOCAL_PATH)/config/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl \
    $(LOCAL_PATH)/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl

# USB and external device
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab

# Sensors
PRODUCT_PACKAGES += \
    sensors.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/sensors.conf:system/etc/sensors.conf \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

# Wifi
BOARD_WLAN_DEVICE_REV := bcm4330_b2
WIFI_BAND             := 802_11_ABG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

# Prebuilt Copy for Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/firmware/BCM4330.hcd:system/etc/firmware/BCM4330.hcd \
    $(LOCAL_PATH)/config/calibration:system/etc/wifi/calibration \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
#    persist.sys.usb.config=mass_storage,adb

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_NAME := full_lt28
PRODUCT_DEVICE := lt28
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on LT28h (Xperia Ion)

