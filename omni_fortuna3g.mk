# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)  # If you are building for a tablet

# Inherit from our custom product configuration for TWRP
$(call inherit-product-if-exists, vendor/omni/config/common.mk)

# Inherit from our custom product configuration for PBRP
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_fortuna3g
PRODUCT_DEVICE := fortuna3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := fortuna3g
PRODUCT_MANUFACTURER := samsung
    
