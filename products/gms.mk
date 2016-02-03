# version
ROM_BUILDTYPE := HOMEMADE
ROM_VERSION := $(TARGET_PRODUCT)-$(shell date -u +%Y%m%d)-$(PLATFORM_VERSION)-$(BUILD_ID)-$(ROM_BUILDTYPE)

# bootanimation (240-320 DPI)
ifneq ($(filter aosp_sgp521 aosp_sgp511_windy aosp_sgp621 aosp_sgp611_windy aosp_d5803 aosp_e2303 aosp_d2303 aosp_d2203 aosp_d5103 aosp_d5303 aosp_e5823 aosp_d5503 aosp_c6833 aosp_sgp771 aosp_sgp712_windy, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    vendor/google/prebuilt/common/bootanimation/240_320/bootanimation.zip:system/media/bootanimation.zip
endif

# bootanimation (480 DPI)
ifneq ($(filter aosp_c6903 aosp_d6503 aosp_d6603 aosp_e6653 aosp_e6853, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    vendor/google/prebuilt/common/bootanimation/480/bootanimation.zip:system/media/bootanimation.zip
endif
