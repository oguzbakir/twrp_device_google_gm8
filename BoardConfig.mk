#
# Copyright (C) 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/google/gm8

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_SMP := true

# Platform
TARGET_BOARD_PLATFORM := msm8940
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8940
TARGET_NO_BOOTLOADER := true

# Crypto
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_CRYPTFS_HW_PATH := device/qcom/common/cryptfs_hw

# Enable CPUSets
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 buildvariant=user veritykeyid=id:7e4333f9bba00adfe0ede979e28ed1920492b40f service_locator.enable=1 swiotlb=1 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 buildvariant=user veritykeyid=id:7e4333f9bba00adfe0ede979e28ed1920492b40f
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += skip_override
BOARD_KERNEL_BASE := 0x80008000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
#BOARD_FLASH_BLOCK_SIZE := 131072

#BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
#BOARD_ROOT_EXTRA_FOLDERS := bt_firmware dsp firmware persist
#BOARD_USES_RECOVERY_AS_BOOT := true
#BOARD_HAS_REMOVABLE_STORAGE := true

#BOARD_SUPPRESS_SECURE_ERASE := true

#TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_WIPE := $(LOCAL_PATH)/recovery/root/etc/recovery.wipe
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Vendor
TARGET_COPY_OUT_VENDOR := vendor

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# TWRP Configuration
AB_OTA_UPDATER := true
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 100
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0
#TW_RECOVERY_ADDITIONAL_RELINK_FILES := ${OUT_DIR}/system/lib64/android.hardware.boot@1.0.so

# Security Patch Hack to prevent Anti Rollback
PLATFORM_SECURITY_PATCH := 2025-12-31
