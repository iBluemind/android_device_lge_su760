## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/su760/su760.mk)

PRODUCT_NAME := cm_su760

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus3D
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := su760

# Enable Torch
PRODUCT_PACKAGES += Torch

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=su760 BUILD_FINGERPRINT="lge/su760/su760:4.0.4/IMM76I/47E63EA5:user/release-keys" PRIVATE_BUILD_DESC="su760-user 4.0.4 IMM76I 330937 release-keys"
