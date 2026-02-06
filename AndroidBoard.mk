LOCAL_PATH := $(call my-dir)

DTBO_PREBUILT := $(LOCAL_PATH)/prebuilt/dtbo.img
DTBO_OBJ := $(PRODUCT_OUT)/obj/DTBO_OBJ/arch/arm64/boot/dtbo.img

$(DTBO_OBJ): $(DTBO_PREBUILT)
	@echo "Copying prebuilt dtbo.img to DTBO_OBJ"
	@mkdir -p $(dir $@)
	@cp -f $< $@

DTB_PREBUILT := $(LOCAL_PATH)/prebuilt/dtb.img
DTB_IMG := $(PRODUCT_OUT)/dtb.img

$(DTB_IMG): $(DTB_PREBUILT)
	@echo "Copying prebuilt dtb.img to product out"
	@mkdir -p $(dir $@)
	@cp -f $< $@

include $(CLEAR_VARS)
