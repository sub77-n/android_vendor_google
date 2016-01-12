# version
ROM_BUILDTYPE := HOMEMADE
ROM_VERSION := $(TARGET_PRODUCT)-$(shell date -u +%Y%m%d)-$(PLATFORM_VERSION)-$(BUILD_ID)-$(ROM_BUILDTYPE)

# bootanimation (480 DPI)
ifneq ($(filter honami leo sirius sumire, $(TARGET_DEVICE)),)

PRODUCT_COPY_FILES +=  \
    vendor/google/prebuilt/common/bootanimation/480/bootanimation.zip:system/media/bootanimation.zip

endif
