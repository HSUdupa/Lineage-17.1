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

-include device/nokia/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/nokia/PLE

# Assert
TARGET_OTA_ASSERT_DEVICE := PLE

# Kernel
TARGET_KERNEL_CONFIG := PLE_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26301931008
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Inherit from the proprietary version
-include vendor/nokia/PLE/BoardConfigVendor.mk
