DEVICE_PATH := device/lumigon/t3

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Release name
PRODUCT_RELEASE_NAME := t3

# Device display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_t3
PRODUCT_DEVICE := t3
PRODUCT_BRAND := Lumigon
PRODUCT_MODEL := Lumigon T3
PRODUCT_MANUFACTURER := Lumigon
PRODUCT_RESTRICT_VENDOR_FILES := false

# SDcard
PRODUCT_CHARACTERISTICS := nosdcard

# Google client ID property.
PRODUCT_GMS_CLIENTID_BASE := android-lumigon

# Build fingerprint from Indian variant.
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT=Lumigon/Lumigon_T3/Lumigon_T3:6.0/3.2P.291/291:user/release-keys \
	PRIVATE_BUILD_DESC="full_htt6795_lwt_m-user 6.0 3.2P.291 291 release-keys"

PRODUCT_COPY_FILES += \
	bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
