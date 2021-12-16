#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tenshi device
$(call inherit-product, device/nokia/PLE/device.mk)

# Inherit from common device
$(call inherit-product, device/nokia/msm8937-common/msm8937.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := FIH
PRODUCT_DEVICE := PLE
PRODUCT_NAME := lineage_PLE
PRODUCT_BRAND := FIH
PRODUCT_MODEL := FIH-D1C-FIH
PRODUCT_MANUFACTURER := FIH

PRODUCT_GMS_CLIENTID_BASE := android-FIH

PRODUCT_BUILD_PROP_OVERRIDES += \
	TARGET_DEVICE="PLE" \
    PRODUCT_NAME="PLE" \
    PRIVATE_BUILD_DESC="TA-1021_00WW-user 9 PKQ1.181105.001 00WW_6_19F release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/TA-1021_00WW/PLE:9/PKQ1.181105.001/00WW_6_19F:user/release-keys
