#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/lge/g4-common/g4-common-vendor.mk)

include $(LOCAL_PATH)/product/*.mk

# Include system  properties file
include $(LOCAL_PATH)/system.prop

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Google Camera
PRODUCT_PACKAGES += \
    GCam

# Glove mode
PRODUCT_PACKAGES += \
    GloveMode

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@1.0-service-legacymm

# Rootless torch tile workaround
PRODUCT_PACKAGES += \
    Flashlight

# Inherits fdroid
$(call inherit-product-if-exists, vendor/fdroid/fdroid-vendor.mk)
