$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/lumigon/t3/overlay

LOCAL_PATH := device/lumigon/t3

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# AAPT
PRODUCT_AAPT_CONFIG := normal xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_COPY_FILES += \
   $(LOCAL_KERNEL):kernel

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.zygote=zygote64_32 \
    camera.disable_zsl_mode=1 \
    ro.mount.fs=EXT4 \
    persist.service.acm.enable=0 \
    persist.sys.usb.config=mtp

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/enableswap.sh:recovery/root/enableswap.sh \
   $(LOCAL_PATH)/rootdir/factory_init.project.rc:recovery/root/factory_init.project.rc \
   $(LOCAL_PATH)/rootdir/factory_init.rc:recovery/root/factory_init.rc \
   $(LOCAL_PATH)/rootdir/fstab.mt6795:recovery/root/fstab.mt6795 \
   $(LOCAL_PATH)/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
   $(LOCAL_PATH)/rootdir/init.rc:recovery/root/init.rc \
   $(LOCAL_PATH)/rootdir/init.mt6795.usb.rc:recovery/root/init.mt6795.usb.rc \
   $(LOCAL_PATH)/rootdir/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
   $(LOCAL_PATH)/rootdir/meta_init.project.rc:recovery/root/meta_init.project.rc \
   $(LOCAL_PATH)/rootdir/init.mt6595.rc:recovery/root/init.mt6595.rc \
   $(LOCAL_PATH)/rootdir/init.mt6795.rc:recovery/root/init.mt6795.rc \
   $(LOCAL_PATH)/rootdir/meta_init.rc:recovery/root/meta_init.rc \
   $(LOCAL_PATH)/rootdir/ueventd.mt6595.rc:recovery/root/ueventd.mt6595.rc \
   $(LOCAL_PATH)/rootdir/ueventd.mt6795.rc:recovery/root/ueventd.mt6795.rc \
   $(LOCAL_PATH)/rootdir/ueventd.rc:recovery/root/ueventd.rc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8
