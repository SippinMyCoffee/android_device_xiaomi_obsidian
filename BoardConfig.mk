DEVICE_PATH := device/xiaomi/obsidian

# Architecture - MT6789H (Helio G100 Ultra)
# The "Ultra" variant benefits from specific ARMv8.2-A optimizations
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Android 16 (Baklava) Platform Flags
PLATFORM_VERSION := 16
PLATFORM_SDK_VERSION := 36
BOARD_OS_VERSION := 16.0.0
BOARD_OS_PATCH_LEVEL := 2025-11

# Kernel & Boot Header (Mandatory for GKI 3.0 / Baklava)
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Page Size & Verified Offsets (From your Sniff)
BOARD_PAGE_SIZE := 4096
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x26f00000  # Verified: 0x66f00000 - 0x40000000
BOARD_TAGS_OFFSET := 0x07c88000

# Partition Management (Strict 64MB Limit)
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 262144

# TWRP & Recovery Logic
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
TARGET_BOARD_PLATFORM := mt6789
BOARD_HAS_NO_SELECT_BUTTON := true

# Size Optimization for 64MB
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := false
TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_APEX := true
TW_EXCLUDE_PYTHON := true
TW_EXCLUDE_TWRPAPP := true

# AVB Signing (Mandatory for HyperOS 3 / Baklava)
BOARD_AVB_ENABLE := true
BOARD_AVB_VENDOR_BOOT_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VENDOR_BOOT_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VENDOR_BOOT_ROLLBACK_INDEX := 1
BOARD_AVB_VENDOR_BOOT_ROLLBACK_INDEX_LOCATION := 1

# GKI & Android 16 Security
BOARD_USES_GENERIC_KERNEL_IMAGE := true
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true

# Chipset Specifics
BOARD_PLATFORM_CHIPSET := mt6789
# Mandatory for Helio G100 Ultra (MT6789H)
BOARD_BOOTCONFIG := androidboot.hardware=mt6789
BOARD_KERNEL_CMDLINE := bootconfig androidboot.hardware=mt6789 androidboot.usbcontroller=11201000.usb0 loop.max_part=7
