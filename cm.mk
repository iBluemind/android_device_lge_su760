## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := SU760

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/su760/full_su760.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := su760
PRODUCT_NAME := cm_su760
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-SU760
PRODUCT_MANUFACTURER := LGE

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=su760 BUILD_FINGERPRINT="lge/su760/su760:4.0.4/IMM76I/47E63EA5:user/release-keys" PRIVATE_BUILD_DESC="su760-user 4.0.4 IMM76I 330937 release-keys"
