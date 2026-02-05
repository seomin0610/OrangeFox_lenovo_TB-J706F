# Inherit from J706F device
$(call inherit-product, device/lenovo/J706F/device.mk)
# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Release name
PRODUCT_RELEASE_NAME := J706F

# Inherit from OrangeFox product configuration
$(call inherit-product, vendor/recovery/config/common.mk)

# Device identifier
PRODUCT_DEVICE := J706F
PRODUCT_NAME := omni_J706F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J706F
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

BUILD_FINGERPRINT := Lenovo/TB-J706F/J706F:11/RKQ1.201112.002/S210094:user/release-keys
