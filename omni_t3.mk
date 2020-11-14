$(call inherit-product, device/lumigon/t3/device.mk)

# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/verity.mk)

# Release name
PRODUCT_RELEASE_NAME := t3

PRODUCT_DEVICE := t3
PRODUCT_NAME := omni_t3
PRODUCT_BRAND := Lumigon
PRODUCT_MODEL := Lumigon T3
PRODUCT_MANUFACTURER := Lumigon
PRODUCT_RESTRICT_VENDOR_FILES := false

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
