#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build flags
WITH_GMS := true
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true

# Device identifier. This must come after all inclusions
PRODUCT_NAME := custom_rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := edge 40 pro

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rtwo_g-user 15 V1TRS35H.60-33-7 2590e-1eb53d release-keys" \
    BuildFingerprint=motorola/rtwo_g/rtwo:15/V1TRS35H.60-33-7/2590e-1eb53d:user/release-keys \
    DeviceProduct=rtwo_g
