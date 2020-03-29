# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)  # If you are building for a tablet

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_fortunave3g
PRODUCT_DEVICE := fortunave3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := fortunave3g
PRODUCT_MANUFACTURER := samsung
