#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true

BOARD_VENDOR := xiaomi

DEVICE_PATH := device/xiaomi/davinci


BUILD_BROKEN_USES_NETWORK := true

# Compile libhwui in performance mode
HWUI_COMPILE_FOR_PERF := true

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := davinci,davinciin

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sm6150
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.console=ttyMSM0 service_locator.enable=1 swiotlb=1 androidboot.configfs=true earlycon=msm_geni_serial,0x880000 loop.max_part=16 cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += androidboot.vbmeta.avb_version=1.0
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := davinci_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/davinci

NEED_KERNEL_MODULE_SYSTEM := true

# Platform
BOARD_USES_QCOM_HARDWARE := true
BUILD_WITHOUT_VENDOR := true
TARGET_BOARD_PLATFORM := sm6150
FORCE_QCOM_DISPLAY_HAL_VARIANT := sm8150
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Audio
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_USES_PREBUILT_CAMERA_SERVICE := true

# Charger Mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# FM
BOARD_HAS_QCA_FM_SOC := "cherokee"
BOARD_HAVE_QCOM_FM := true

# Graphics
TARGET_USES_HWC2 := true

# HIDL
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_davinci
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/
TARGET_RECOVERY_DEVICE_MODULES := libinit_davinci

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57453555712

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/persist:/persist \
    /vendor/bt_firmware:/bt_firmware \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true

TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RenderScript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# RIL
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(DEVICE_PATH)/sepolicy/private \
    device/qcom/sepolicy/generic/private \
    device/qcom/sepolicy/qva/private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/public \
    device/qcom/sepolicy/qva/public

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Treble
BOARD_VNDK_VERSION := current
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

# Inherit from the proprietary version
-include vendor/xiaomi/davinci/BoardConfigVendor.mk
