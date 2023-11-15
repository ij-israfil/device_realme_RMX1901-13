#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080
MAINTAINER := м∂_ιѕяαƒιℓ
SUPERIOR_BUILD_TYPE := COMMUNITY
USE_AOSP_DIALER := true
BUILD_WITH_GAPPS := true
SUPERIOR_UDFPS_ANIMATIONS := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := superior_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="husky-user 14 UD1A.231105.004 11010374 release-keys" \
    PRODUCT_NAME="RMX1901"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/husky/husky:14/UD1A.231105.004/11010374:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
