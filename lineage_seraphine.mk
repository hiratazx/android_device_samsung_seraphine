#
# Copyright (C) 2021 The Android Open Source Project 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from yukiprjkt/seraphine device makefile
$(call inherit-product, device/samsung/seraphine/device.mk)

# Dimensions
TARGET_SCREEN_HEIGHT := 1560
TARGET_SCREEN_WIDTH := 720

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := seraphine
PRODUCT_NAME := lineage_searphine
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy A10s
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := Galaxy A10s

# Build FP
BUILD_FINGERPRINT := "samsung/a10sxx/a10s:10/QP1A.190711.020/A107FXXU8BUC2:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES := \
    TARGET_DEVICE=seraphine \
    PRODUCT_DEVICE=seraphine \
    PRIVATE_BUILD_DESC="a10sxx-user 10 QP1A.190711.020 A107FXXU8BUC2 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
