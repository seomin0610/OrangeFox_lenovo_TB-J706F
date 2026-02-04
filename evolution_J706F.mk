# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from J706F device
$(call inherit-product, device/lenovo/J706F/device.mk)

# GMS (product partition is too small for gapps)
WITH_GMS := false

# Inherit common tablet config + Evolution X bits
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/lineage/config/evolution.mk)

# Device identifier
PRODUCT_NAME := evolution_J706F
PRODUCT_DEVICE := J706F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J706F
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Device first shipped with Android 10 (API 29).
PRODUCT_SHIPPING_API_LEVEL := 29

# Kernel is below required LTS for current FCM; relax kernel enforcement for build.
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

# Build fingerprint
BUILD_FINGERPRINT := Lenovo/TB-J706F/J706F:11/RKQ1.201022.002/S1RW31.58:user/release-keys
