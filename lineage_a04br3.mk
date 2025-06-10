#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from a04br3 device
$(call inherit-product, device/sts/a04br3/device.mk)

# Inherit some common cm stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a04br3
PRODUCT_NAME := lineage_a04br3
PRODUCT_RELEASE_NAME := a04br3
PRODUCT_BRAND := benesse
PRODUCT_MODEL := TAB-A03-BR3
PRODUCT_MANUFACTURER := sts

PRODUCT_GMS_CLIENTID_BASE := android-sts

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/root/fstab.mt8167:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt8167
#    $(LOCAL_PATH)/recovery/root/init.rc:$(TARGET_COPY_OUT_RAMDISK)/init.rc \
#    $(LOCAL_PATH)/recovery/root/init.mt8167.rc:$(TARGET_COPY_OUT_RAMDISK)/init.mt8167.rc \
#    $(LOCAL_PATH)/recovery/root/ueventd.mt8167.rc:$(TARGET_COPY_OUT_RAMDISK)/ueventd.mt8167.rc \
#    $(LOCAL_PATH)/recovery/root/ueventd.rc:$(TARGET_COPY_OUT_RAMDISK)/ueventd.rc


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TAB-A04-BR3-user 7.0 01.06.000 01.06.000 release-keys"

BUILD_FINGERPRINT := benesse/TAB-A04-BR3/TAB-A04-BR3:7.0/01.06.000/01.06.000:user/release-keys
