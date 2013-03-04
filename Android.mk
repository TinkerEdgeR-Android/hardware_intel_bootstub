LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
bootstub: $(PRODUCT_OUT)/boot/bootstub

$(PRODUCT_OUT)/boot/bootstub:
	cd vendor/intel/boot/bootstub/ && CC=$(ANDROID_BUILD_TOP)/$($(my_prefix)CC) CMDLINE_SIZE=$(BOARD_KERNEL_CMDLINE_SIZE) make
	mkdir -p $(PRODUCT_OUT)/boot
	mv vendor/intel/boot/bootstub/bootstub $(PRODUCT_OUT)/boot
