# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/lge/su760/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
NEEDS_ARM_ERRATA_754319_754320 := true
BOARD_GLOBAL_CFLAGS += -DNEEDS_ARM_ERRATA_754319_754320
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

#BOARD_KERNEL_BASE := 0x80000000
#BOARD_KERNEL_CMDLINE :=

BOARD_CUSTOM_BOOTIMG_MK := device/lge/su760/uboot-bootimg.mk
BOARD_USES_UBOOT_MULTIIMAGE := true
BOARD_UBOOT_ENTRY := 0x80008000
BOARD_UBOOT_LOAD := 0x80008000

# Define kernel config for inline building
#TARGET_KERNEL_CONFIG := cosmo_su760_defconfig
#TARGET_KERNEL_SOURCE := kernel/lge/su760
TARGET_PREBUILT_KERNEL := device/lge/su760/prebuilt/kernel

TARGET_BOOTLOADER_BOARD_NAME := su760

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/lge/su760/config/egl.cfg

# OMAP
OMAP_ENHANCEMENT := true
ifdef OMAP_ENHANCEMENT
  COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif

BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p16
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p16
BOARD_VOLD_MAX_PARTITIONS := 16
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 619249664
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1056858112
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_LARGE_FILESYSTEM := true

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS 		 += -DUSES_TI_MAC80211

BOARD_HAVE_BLUETOOTH := true
BOARD_WPAN_DEVICE := true

BOARD_LIB_DUMPSTATE := libdumpstate.su760

BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"

BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/su760/vibrator.c

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

BOARD_RECOVERY_ALWAYS_WIPES := true
TARGET_RECOVERY_INITRC := device/lge/su760/recovery/init.rc
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
TARGET_RECOVERY_PRE_COMMAND := "echo boot-recovery | dd of=/dev/block/mmcblk0p14 bs=1;"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HDPI_RECOVERY := true
BOARD_USE_CUSTOM_FONT := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

#twrp
DEVICE_RESOLUTION := 480x800
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
