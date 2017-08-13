#
# Copyright 2016 The Android Open Source Project
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
PRODUCT_RELEASE_NAME := z2_plus

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from oppo-common
#$(call inherit-product, device/oppo/common/common.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/tipsy/config/common_full_phone.mk)

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := z2_plus
PRODUCT_NAME := tipsy_z2_plus
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := Z2 Plus
PRODUCT_MANUFACTURER := ZUK

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=z2_plus PRODUCT_NAME=z2_plus

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="ZUK/z2_plus/z2_plus:7.0/NRD90M/2.5.412_170428:user/release-keys" \
    PRIVATE_BUILD_DESC="z2_plus-user 7.0 NRD90M 2.5.412_170428 release-keys"
