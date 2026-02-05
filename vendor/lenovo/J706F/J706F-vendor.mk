PRODUCT_SOONG_NAMESPACES += \
    vendor/lenovo/J706F

PRODUCT_COPY_FILES += \
    vendor/lenovo/J706F/default.prop:$(TARGET_COPY_OUT_VENDOR)/default.prop


# 모든 vendor 파일을 자동으로 포함
$(call inherit-product-if-exists, vendor/lenovo/J706F/J706F-vendor-blobs.mk)
