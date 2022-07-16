#
# Copyright (C) 2022 The Fluid Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from veux device
$(call inherit-product, device/xiaomi/veux/device.mk)

# Inherit some common Fluid stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

PRODUCT_NAME := fluid_veux
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X4 Pro 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="veux-user 11 RKQ1.211001.001 V13.0.14.0.RKCMIXM release-keys"

BUILD_FINGERPRINT := POCO/veux_p_global/veux:11/RKQ1.211001.001/V13.0.14.0.RKCMIXM:user/release-keys

# Some Fluid stuffs
IS_PHONE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
FLUID_BUILD_TYPE := OFFICIAL
PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=Jack1Player \
  ro.fluid.cpu=SM6375

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
