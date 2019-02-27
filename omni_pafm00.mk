#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := pafm00

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

#$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oppo/pafm00/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_pafm00
PRODUCT_DEVICE := pafm00
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PAFM00
PRODUCT_MANUFACTURER := OPPO

TARGET_VENDOR_PRODUCT_NAME := pafm00
TARGET_VENDOR_DEVICE_NAME := pafm00
ALLOW_MISSING_DEPENDENCIES := true
