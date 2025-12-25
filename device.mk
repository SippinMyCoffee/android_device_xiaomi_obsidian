# Inherit from GKI
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)

# Set the fstab (The one we just made)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

# Graphics / Screen (Redmi Note 14 Pro 4G Specs)
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Language / Locales
PRODUCT_DEFAULT_LOCALE := en_US

# TWRP Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/BoardConfig.mk:recovery/root/BoardConfig.mk
