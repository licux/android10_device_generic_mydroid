
ifdef NET_ETH0_STARTONBOOT
  PRODUCT_PROPERTY_OVERRIDES += net.eth0.startonboot=1
endif

# Ensure we package the BIOS files too.
PRODUCT_HOST_PACKAGES += \
	bios.bin \
	vgabios-cirrus.bin \

PRODUCT_ARTIFACT_PATH_REQUIREMENT_WHITELIST := \
    system/lib/libemulator_multidisplay_jni.so \
    system/lib64/libemulator_multidisplay_jni.so \
    system/priv-app/MultiDisplayProvider/MultiDisplayProvider.apk \

PRODUCT_PACKAGES += MultiDisplayProvider

