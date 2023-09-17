#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Superior extended stuff.
$(call inherit-product, vendor/superior/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080
USE_AOSP_DIALER := true
USE_MOTO_CALCULATOR := true
USE_MOTO_CLOCK := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_MATLOG := false
BUILD_WITH_GAPPS := true
SUPERIOR_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
USE_QUICKPIC := false
USE_DUCKDUCKGO := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := superior_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Maintainer
PRODUCT_SYSTEM_PROPERTIES += \
    ro.spos.maintainer=м∂_ιѕяαƒιℓ

PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="RMX1901-user 11 RKQ1.201217.002 1651205774457 release-keys" \
TARGET_DEVICE=RMX1901 \
TARGET_PRODUCT=RMX1901

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := realme/RMX1901/RMX1901:11/RKQ1.201217.002/1651205774457:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)