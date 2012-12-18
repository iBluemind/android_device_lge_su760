# Copyright (C) 2012 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/lge/su760/overlay
TARGET_SPECIFIC_HEADER_PATH := device/lge/su760/include

# make fallback to mdpi possible
# e.g. for maintaining crisp assets on 160dpi
PRODUCT_AAPT_CONFIG := normal hdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi mdpi

PRODUCT_PACKAGES := \
	charger \
	charger_res_images

PRODUCT_PACKAGES += \
	libinvensense_mpl

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	libaudioutils

PRODUCT_COPY_FILES := \
	device/lge/su760/init.lgesu760board.rc:root/init.lgesu760board.rc \
	device/lge/su760/init.su760.usb.rc:root/init.su760.usb.rc \
	device/lge/su760/ueventd.lgesu760board.rc:root/ueventd.lgesu760board.rc \
	device/lge/su760/prebuilt/init.rmnet:system/bin/init.rmnet \
	device/lge/su760/prebuilt/init.rmnet-down:system/bin/init.rmnet-down \
	device/lge/su760/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/lge/su760/config/gps_brcm_conf.xml:system/etc/gps_brcm_conf.xml \
	device/lge/su760/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# keylayouts and touchscreen
PRODUCT_COPY_FILES += \
	device/lge/su760/config/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
	device/lge/su760/config/touch_dev.idc:system/usr/idc/touch_dev.idc \
	device/lge/su760/config/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
	device/lge/su760/config/twl6030_pwrbutton.kl:system/usr/keylayout/twl6030_pwrbutton.kl

# Ssx modules
PRODUCT_COPY_FILES += \
	device/lge/su760/prebuilt/modules/omaplfb_sgx540_120.ko:system/modules/omaplfb_sgx540_120.ko \
	device/lge/su760/prebuilt/modules/pvrsrvkm_sgx540_120.ko:system/modules/pvrsrvkm_sgx540_120.ko

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

## WPAN
PRODUCT_PACKAGES += uim-sysfs

# Wifi (Kernel_Modules)
PRODUCT_COPY_FILES += \
    	device/lge/su760/prebuilt/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    	device/lge/su760/prebuilt/lib/modules/compat.ko:system/lib/modules/compat.ko \
    	device/lge/su760/prebuilt/lib/modules/mac80211.ko:system/lib/modules/mac80211.ko \
    	device/lge/su760/prebuilt/lib/modules/wl12xx.ko:system/lib/modules/wl12xx.ko \
    	device/lge/su760/prebuilt/lib/modules/wl12xx_sdio.ko:system/lib/modules/wl12xx_sdio.ko

# Bluetooth (Kernel_Modules)
PRODUCT_COPY_FILES += \
	device/lge/su760/prebuilt/lib/ti-bluez-ko/bluetooth.ko:system/lib/ti-bluez-ko/bluetooth.ko \
	device/lge/su760/prebuilt/lib/ti-bluez-ko/btwilink.ko:system/lib/ti-bluez-ko/btwilink.ko \
	device/lge/su760/prebuilt/lib/ti-bluez-ko/rfcomm.ko:system/lib/ti-bluez-ko/rfcomm.ko

PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	wifi.features=p2p \
	wifi.supplicant_scan_interval=45

PRODUCT_PACKAGES += \
	lights.su760 \
	wifimac \
	wifical.sh \
    	calibrator \
	crda \
	regulatory.bin \
	dhcpcd.conf

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

#--> manual omap4 start
PRODUCT_PACKAGES += \
        libdomx \
        libOMX_Core \
        libOMX.TI.DUCATI1.VIDEO.H264E \
        libOMX.TI.DUCATI1.VIDEO.MPEG4E \
        libOMX.TI.DUCATI1.VIDEO.DECODER \
        libOMX.TI.DUCATI1.VIDEO.DECODER.secure \
        libOMX.TI.DUCATI1.VIDEO.CAMERA \
        libOMX.TI.DUCATI1.MISC.SAMPLE \
        libdrmdecrypt \
        libstagefrighthw \
        libI420colorconvert \
        libtiutils \
        libcamera \
        libion \
        camera.omap4 \
        libomxcameraadapter \
        smc_pa_ctrl \
        tf_daemon \
        libtf_crypto_sst

PRODUCT_VENDOR_KERNEL_HEADERS := hardware/ti/omap4xxx/kernel-headers
# manual omap4 end <--

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
	
# ril
PRODUCT_COPY_FILES += \
	device/lge/su760/config/ipc_channels.config:system/etc/ipc_channels.config

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	hwui.render_dirty_regions=false

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=240

PRODUCT_TAGS += dalvik.gc.type-precise

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/su760/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Vold and Storage
PRODUCT_COPY_FILES += \
	device/lge/su760/vold.fstab:system/etc/vold.fstab

PRODUCT_PROPERTY_OVERRIDES += \
	ro.vold.switchablepair=/mnt/emmc,/mnt/sdcard

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.vold.switchexternal=1

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/nxp/pn544/nxp-pn544-fw-vendor.mk)
$(call inherit-product-if-exists, vendor/ti/proprietary/omap4/ti-omap4-vendor.mk)
$(call inherit-product-if-exists, vendor/lge/su760/device-vendor.mk)
