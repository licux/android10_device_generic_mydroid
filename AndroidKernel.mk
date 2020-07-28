# TARGET_ARCH is defined in x86emu.mk
ARCH=$(TARGET_ARCH)

PRODUCT_OUT ?= out/target/product/mydroid

BUILD_CONFIG=goldfish/build.config.goldfish.x86_64
KERNEL_OUT_DIR=$(PRODUCT_OUT)/kernel

TARGET_KERNEL_SOURCE := kernel
TARGET_ARCH := x86_64
KERNEL_IMAGE := out/dist/bzImage

$(KERNEL_OUT_DIR):
	mkdir -p $(KERNEL_OUT_DIR)

$(KERNEL_OUT_DIR)/$(KERNEL_IMAGE):
	cd kernel; BUILD_CONFIG=$(BUILD_CONFIG) OUT_DIR=$(KERNEL_OUT_DIR) build/build.sh 

PRODUCT_COPY_FILES += \
	$(TARGET_KERNEL_SOURCE)/$(KERNEL_IMAGE):$(PRODUCT_OUT)/kernel-ranchu \
