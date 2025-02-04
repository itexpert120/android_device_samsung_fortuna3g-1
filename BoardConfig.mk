##
# Copyright (C) 2020 The Android Open-Source Project
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
##

# LZMA compression for recovery's & kernel ramdisk....
BOARD_CUSTOM_BOOTIMG_MK 		  := device/samsung/fortunaxx3g/custombootimg.mk
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME :=	MSM8916
TARGET_NO_BOOTLOADER 	     := true

# Platform
TARGET_BOARD_PLATFORM 	  := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Architecture
TARGET_ARCH 	    := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI	    := armeabi-v7a
TARGET_CPU_ABI2     := armeabi
TARGET_CPU_VARIANT  := cortex-a53

# Kernel
BOARD_KERNEL_CMDLINE  	  := console=null \
			     androidboot.hardware=qcom msm_rtb.filter=0x3F \
			     ehci-hcd.park=3 \
			     androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_TAGS_OFFSET  := 0x80000100
BOARD_RAMDISK_OFFSET      := 0x81000000
BOARD_KERNEL_BASE      	  := 0x80000000
BOARD_KERNEL_PAGESIZE 	  := 2048
BOARD_MKBOOTIMG_ARGS   	  := --kernel_offset 0x80008000
BOARD_MKBOOTIMG_ARGS      += --dt device/samsung/fortunaxx3g/dt.img
BBOARD_MKBOOTIMG_ARGS 	  += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS 	  += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_KERNEL_SEPARATED_DT := true
TARGET_PREBUILT_KERNEL 	  := device/samsung/fortunaxx3g/kernel

# Partition info
TARGET_USERIMAGES_USE_EXT4   	   := true
TARGET_USERIMAGES_USE_F2FS 	   := true
TARGET_PLATFORM_DEVICE_BASE        := /devices/soc.0/
BOARD_BOOTIMAGE_PARTITION_SIZE     := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1568669696
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5731479552
BOARD_FLASH_BLOCK_SIZE 		   := 131072

# Recovery
BOARD_HAS_LARGE_FILESYSTEM     := true
TARGET_RECOVERY_DENSITY        := hdpi
BOARD_HAS_NO_MISC_PARTITION    := true
BOARD_HAS_NO_SELECT_BUTTON     := true
BOARD_RECOVERY_SWIPE 	       := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS 	       := true

# Qualcomm support
TARGET_RECOVERY_QCOM_RTC_FIX := true

# TWRP
TW_THEME 			 := portrait_hdpi
TARGET_RECOVERY_FSTAB 		 := device/samsung/fortunaxx3g/recovery/twrp.fstab
TW_INCLUDE_CRYPTO 		 := true
TW_BRIGHTNESS_PATH 		 := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_PIXEL_FORMAT 	 := RGBA_8888
TW_NEW_ION_HEAP 		 := true
TW_INTERNAL_STORAGE_PATH 	 := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT  := "data"
TW_EXTERNAL_STORAGE_PATH 	 := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT  := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE      := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_SCREEN_BLANK_ON_BOOT          := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
