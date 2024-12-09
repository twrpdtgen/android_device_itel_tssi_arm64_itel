#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tssi_arm64_itel device
$(call inherit-product, device/itel/tssi_arm64_itel/device.mk)

PRODUCT_DEVICE := tssi_arm64_itel
PRODUCT_NAME := omni_tssi_arm64_itel
PRODUCT_BRAND := Itel
PRODUCT_MODEL := tssi
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tssi_arm64_itel_full-user 14 UP1A.231005.007 626 release-keys"

BUILD_FINGERPRINT := Itel/S685LN-OP/itel-S685LN:14/UP1A.231005.007/241024V2467:user/release-keys
