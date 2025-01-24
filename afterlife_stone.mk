#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

# Inherit some common afterlife stuff.
AFTERLIFE_VERSION_APPEND_TIME_OF_DAY := true
AFTERLIFE_BUILD_TYPE := UNOFFICIAL
AFTERLIFE_MAINTAINER := HAPPYGAMES222
BUILD_AOSP_CAMERA := false

PRODUCT_NAME := afterlife_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur
TARGET_SUPPORTS_BLUR := true

# Pixel Stuff
USE_PIXEL_CHARGING := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

BUILD_FINGERPRINT := POCO/moonstone_p_global/moonstone:14/UKQ1.231003.002/V816.0.8.0.UMPMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
