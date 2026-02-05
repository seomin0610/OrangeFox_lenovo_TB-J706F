LOCAL_PATH := $(call my-dir)

DTBO_PREBUILT := $(LOCAL_PATH)/prebuilt/dtbo.img
DTBO_OBJ := $(PRODUCT_OUT)/obj/DTBO_OBJ/arch/arm64/boot/dtbo.img

$(DTBO_OBJ): $(DTBO_PREBUILT)
	@echo "Copying prebuilt dtbo.img to DTBO_OBJ"
	@mkdir -p $(dir $@)
	@cp -f $< $@

include $(CLEAR_VARS)
