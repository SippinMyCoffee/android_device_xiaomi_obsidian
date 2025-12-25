# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from TWRP common bits
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from your device's BoardConfig
$(call inherit-product, device/xiaomi/obsidian/device.mk)

# Device identifier
PRODUCT_DEVICE := obsidian
PRODUCT_NAME := omni_obsidian
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 14 Pro 4G
PRODUCT_MANUFACTURER := xiaomi

# Identifying the build (Baklava / SDK 36)
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit some Xiaomi-specific features if available in the manifest
PRODUCT_CHARACTERISTICS := nosdcard
