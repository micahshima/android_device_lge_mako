## Specify phone tech before including full_phone
$(call inherit-product, vendor/mahdi/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit common product files.
$(call inherit-product, vendor/mahdi/config/common.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/mahdi/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mako
PRODUCT_NAME := mahdi_mako
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.3/JWR66V/737497:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.3 JWR66V 737497 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
