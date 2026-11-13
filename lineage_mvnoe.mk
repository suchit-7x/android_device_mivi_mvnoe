#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from mvnoe device
$(call inherit-product, device/mivi/mvnoe/device.mk)

# Device identifiers
PRODUCT_DEVICE := mvnoe
PRODUCT_NAME := lineage_mvnoe
PRODUCT_BRAND := Mivi
PRODUCT_MODEL := MIVI ONE
PRODUCT_MANUFACTURER := mivi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BQ2A.260305.002 261010 release-keys" \
    BuildFingerprint=Mivi/Mivi_One/MVNOE:16/BQ2A.260305.002/261010:user/release-keys \
    DeviceName=MVNOE \
    DeviceProduct=MVNOE

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-chinoe
