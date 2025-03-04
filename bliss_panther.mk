#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Bliss stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/bliss_common.mk)

include device/google/pantah/panther/device-bliss.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := bliss_panther

TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
TARGET_STOCK_GAPPS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
