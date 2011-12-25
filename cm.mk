$(call inherit-product, device/htc/vivow/vivow.mk)

PRODUCT_RELEASE_NAME := Inc2

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivow BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=verizon_wwe/htc_vivow/vivow:2.3.4/GRJ22/120826.3:user/release-keys PRIVATE_BUILD_DESC="4.08.605.3 CL120826 release-keys"

PRODUCT_NAME := cm_vivow
PRODUCT_BRAND := verizon_wwe
PRODUCT_MODEL := Incredible 2
PRODUCT_DEVICE := vivow
PRODUCT_MANUFACTURER := HTC
