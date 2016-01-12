# version
ROM_BUILDTYPE := HOMEMADE
ROM_VERSION := $(TARGET_PRODUCT)-$(shell date -u +%Y%m%d)-$(PLATFORM_VERSION)-$(BUILD_ID)-$(ROM_BUILDTYPE)

# bootanimation (480 DPI)
ifneq ($(filter aosp_c6903 aosp_d6503 aosp_d6603 aosp_e6653 aosp_e6853, $(TARGET_PRODUCT)),)

PRODUCT_COPY_FILES +=  \
    vendor/google/prebuilt/common/bootanimation/480/bootanimation.zip:system/media/bootanimation.zip

endif
