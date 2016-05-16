# Copyright (C) 2016 The Sony AOSP Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/google/overlay/common

# AOSP Packages
PRODUCT_PACKAGES += \
    ExactCalculator

# version
ROM_BUILDTYPE := HOMEMADE
ROM_VERSION := $(TARGET_PRODUCT)-$(shell date -u +%Y%m%d)-$(PLATFORM_VERSION)-$(BUILD_ID)-$(ROM_BUILDTYPE)

# Audio (Notifications/Alarms)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

# Audio (Ringtones)
ifneq ($(filter aosp_c6903 aosp_d6503 aosp_d6603 aosp_e6653 aosp_e6853 aosp_sgp521 aosp_sgp621 aosp_d5803 aosp_e2303 aosp_d2303 aosp_d2203 aosp_d5103 aosp_d5303 aosp_e5823 aosp_d5503 aosp_c6833 aosp_sgp771, $(TARGET_PRODUCT)),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg
endif

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
