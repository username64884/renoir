#
# Copyright (C) 2023 The OrangeFox Recovery Project
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

# Inherit from the common tree
$(call inherit-product, device/xiaomi/sm7350-common/common.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier
PRODUCT_DEVICE := renoir
PRODUCT_NAME := twrp_renoir
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 11 Lite 5G NE
PRODUCT_MANUFACTURER := Xiaomi

# Assert
TARGET_OTA_ASSERT_DEVICE := renoir

# Device specific overlays
PRODUCT_PACKAGE_OVERLAYS += device/xiaomi/renoir/overlay

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.device=renoir \
    ro.product.product.device=renoir

PRODUCT_PRODUCT_PROPERTIES += \
    ro.product.device=renoir

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=renoir \
    PRODUCT_NAME=renoir \
    PRIVATE_BUILD_DESC="renoir-user 13 TKQ1.220829.002 V14.0.6.0.TKIMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/renoir/renoir:13/TKQ1.220829.002/V14.0.6.0.TKIMIXM:user/release-keys
